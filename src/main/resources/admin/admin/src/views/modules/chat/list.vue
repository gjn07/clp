<template>
  <div class="main-content">
    <!-- 列表页 -->
    <div v-if="!showFlag">
      <div class="table-content">
        <el-table
            v-loading="dataListLoading"
            :data="dataList"
            border
            style="width: 100%;"
        >
          <!-- <el-table-column type="selection" header-align="center" align="center" width="50"></el-table-column> -->
          <!-- <el-table-column prop="id" header-align="center" align="center" sortable label="id"></el-table-column> -->
          <el-table-column align="center" header-align="center" label="新消息" prop="ask" sortable></el-table-column>
          <!-- <el-table-column width="250" prop="addtime" header-align="center" align="center" sortable label="发送时间"></el-table-column> -->
          <el-table-column
              align="center"
              header-align="center"
              label="状态"
              prop="allnode"
              sortable
              width="150"
          >
            <template slot-scope="scope">
              <el-tag v-if="scope.row.isreply==1" type="success">未回复</el-tag>
              <el-tag v-if="scope.row.isreply==0" type="info">已回复</el-tag>
            </template>
          </el-table-column>
          <el-table-column
              align="center"
              fixed="right"
              header-align="center"
              label="操作"
              width="150"
          >
            <template slot-scope="scope">
              <el-button
                  icon="el-icon-edit"
                  size="small"
                  type="text"
                  @click="addOrUpdateHandler(scope.row)"
              >回复
              </el-button>
            </template>
          </el-table-column>
        </el-table>
        <el-pagination
            :current-page="pageIndex"
            :page-size="pageSize"
            :page-sizes="[10, 20, 50, 100]"
            :total="totalPage"
            class="pagination-content"
            layout="total, sizes, prev, pager, next, jumper"
            @size-change="sizeChangeHandle"
            @current-change="currentChangeHandle"
        ></el-pagination>
      </div>
    </div>
    <!-- 添加/修改页面  将父组件的search方法传递给子组件-->
    <add-or-update v-else ref="addOrUpdate" :parent="this"></add-or-update>
  </div>
</template>
<script>
import AddOrUpdate from "./chat-add-or-update";
import {clearInterval, setInterval} from 'timers';

export default {
  data() {
    return {
      searchForm: {},
      dataList: [],
      pageIndex: 1,
      pageSize: 10,
      totalPage: 0,
      dataListLoading: false,
      showFlag: false,
      dataListSelections: [],
      inter: null
    };
  },
  created() {
    var that = this;
    var inter = setInterval(function () {
      that.getDataList();
    }, 5000);
    this.inter = inter;
  },
  destroyed() {
    clearInterval(this.inter);
  },
  components: {
    AddOrUpdate
  },
  methods: {
    getDataList() {
      this.dataListLoading = true;
      this.$http({
        url: this.$api.chatpage,
        method: "get",
        params: {
          page: this.pageIndex,
          limit: this.pageSize,
          sort: 'id'
        }
      }).then(({data}) => {
        if (data && data.code === 0) {
          this.dataList = data.data.list;
          this.totalPage = data.data.total;
        } else {
          this.dataList = [];
          this.totalPage = 0;
        }
        this.dataListLoading = false;
      });
    },
    // 每页数
    sizeChangeHandle(val) {
      this.pageSize = val;
      this.pageIndex = 1;
      this.getDataList();
    },
    // 当前页
    currentChangeHandle(val) {
      this.pageIndex = val;
      this.getDataList();
    },
    // 回复
    addOrUpdateHandler(row) {
      this.showFlag = true;
      this.$nextTick(() => {
        this.$refs.addOrUpdate.init(row.userid);
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
