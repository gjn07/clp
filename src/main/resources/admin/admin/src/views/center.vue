<template>
  <div>
    <el-form
        ref="ruleForm"
        :model="ruleForm"
        class="detail-form-content"
        label-width="80px"
    >
      <el-row>
        <el-col :span="12">
          <el-form-item v-if="flag=='yonghu'" label="账号" prop="zhanghao">
            <el-input v-model="ruleForm.zhanghao" clearable placeholder="账号" readonly></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='yonghu'" label="姓名" prop="xingming">
            <el-input v-model="ruleForm.xingming" clearable placeholder="姓名"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='yonghu'" label="性别" prop="xingbie">
            <el-select v-model="ruleForm.xingbie" placeholder="请选择性别">
              <el-option
                  v-for="(item,index) in yonghuxingbieOptions"
                  v-bind:key="index"
                  :label="item"
                  :value="item">
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='yonghu'" label="手机" prop="shouji">
            <el-input v-model="ruleForm.shouji" clearable placeholder="手机"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='yonghu'" label="邮箱" prop="youxiang">
            <el-input v-model="ruleForm.youxiang" clearable placeholder="邮箱"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item v-if="flag=='yonghu'" label="照片" prop="zhaopian">
            <file-upload
                :fileUrls="ruleForm.zhaopian?ruleForm.zhaopian:''"
                :limit="3"
                :multiple="true"
                action="file/upload"
                tip="点击上传照片"
                @change="yonghuzhaopianUploadChange"
            ></file-upload>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='yonghu'" label="备注" prop="beizhu">
            <el-input v-model="ruleForm.beizhu" clearable placeholder="备注"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='jiaoshi'" label="教师工号" prop="jiaoshigonghao">
            <el-input v-model="ruleForm.jiaoshigonghao" clearable placeholder="教师工号" readonly></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='jiaoshi'" label="教师姓名" prop="jiaoshixingming">
            <el-input v-model="ruleForm.jiaoshixingming" clearable placeholder="教师姓名"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='jiaoshi'" label="性别" prop="xingbie">
            <el-select v-model="ruleForm.xingbie" placeholder="请选择性别">
              <el-option
                  v-for="(item,index) in jiaoshixingbieOptions"
                  v-bind:key="index"
                  :label="item"
                  :value="item">
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item v-if="flag=='jiaoshi'" label="照片" prop="zhaopian">
            <file-upload
                :fileUrls="ruleForm.zhaopian?ruleForm.zhaopian:''"
                :limit="3"
                :multiple="true"
                action="file/upload"
                tip="点击上传照片"
                @change="jiaoshizhaopianUploadChange"
            ></file-upload>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='jiaoshi'" label="职称" prop="zhicheng">
            <el-input v-model="ruleForm.zhicheng" clearable placeholder="职称"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='jiaoshi'" label="联系电话" prop="lianxidianhua">
            <el-input v-model="ruleForm.lianxidianhua" clearable placeholder="联系电话"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item v-if="flag=='jiaoshi'" label="教师邮箱" prop="jiaoshiyouxiang">
            <el-input v-model="ruleForm.jiaoshiyouxiang" clearable placeholder="教师邮箱"></el-input>
          </el-form-item>
        </el-col>
        <el-form-item v-if="flag=='users'" label="用户名" prop="username">
          <el-input v-model="ruleForm.username"
                    placeholder="用户名"></el-input>
        </el-form-item>
        <el-col :span="24">
          <el-form-item>
            <el-button type="primary" @click="onUpdateHandler">修 改</el-button>
          </el-form-item>
        </el-col>
      </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import {isNumber, isIntNumer, isEmail, isMobile, isPhone, isURL, checkIdCard} from "@/utils/validate";

export default {
  data() {
    return {
      ruleForm: {},
      flag: '',
      usersFlag: false,
      yonghuxingbieOptions: [],
      jiaoshixingbieOptions: [],
    };
  },
  mounted() {
    var table = this.$storage.get("sessionTable");
    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({data}) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
    this.yonghuxingbieOptions = "男,女".split(',')
    this.jiaoshixingbieOptions = "男,女".split(',')
  },
  methods: {
    yonghuzhaopianUploadChange(fileUrls) {
      this.ruleForm.zhaopian = fileUrls;
    },
    jiaoshizhaopianUploadChange(fileUrls) {
      this.ruleForm.zhaopian = fileUrls;
    },
    onUpdateHandler() {
      if ((!this.ruleForm.zhanghao) && 'yonghu' == this.flag) {
        this.$message.error('账号不能为空');
        return
      }
      if ((!this.ruleForm.mima) && 'yonghu' == this.flag) {
        this.$message.error('密码不能为空');
        return
      }
      if ('yonghu' == this.flag && this.ruleForm.shouji && (!isMobile(this.ruleForm.shouji))) {
        this.$message.error(`手机应输入手机格式`);
        return
      }
      if ('yonghu' == this.flag && this.ruleForm.youxiang && (!isEmail(this.ruleForm.youxiang))) {
        this.$message.error(`邮箱应输入邮箱格式`);
        return
      }
      if ('yonghu' == this.flag && this.ruleForm.money && (!isNumber(this.ruleForm.money))) {
        this.$message.error(`余额应输入数字`);
        return
      }
      if ((!this.ruleForm.jiaoshigonghao) && 'jiaoshi' == this.flag) {
        this.$message.error('教师工号不能为空');
        return
      }
      if ((!this.ruleForm.mima) && 'jiaoshi' == this.flag) {
        this.$message.error('密码不能为空');
        return
      }
      if ((!this.ruleForm.jiaoshixingming) && 'jiaoshi' == this.flag) {
        this.$message.error('教师姓名不能为空');
        return
      }
      if ('jiaoshi' == this.flag && this.ruleForm.lianxidianhua && (!isMobile(this.ruleForm.lianxidianhua))) {
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
      if ('jiaoshi' == this.flag && this.ruleForm.jiaoshiyouxiang && (!isEmail(this.ruleForm.jiaoshiyouxiang))) {
        this.$message.error(`教师邮箱应输入邮箱格式`);
        return
      }
      if ('jiaoshi' == this.flag && this.ruleForm.money && (!isNumber(this.ruleForm.money))) {
        this.$message.error(`余额应输入数字`);
        return
      }
      if ('users' == this.flag && this.ruleForm.username.trim().length < 1) {
        this.$message.error(`用户名不能为空`);
        return
      }
      this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({data}) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
