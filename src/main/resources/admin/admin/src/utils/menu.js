const menu = {
    list() {
        return [{
            "backMenu": [{
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "用户",
                    "menuJump": "列表",
                    "tableName": "yonghu"
                }], "menu": "用户管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "教师",
                    "menuJump": "列表",
                    "tableName": "jiaoshi"
                }], "menu": "教师管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "删除", "审核", "查看评论", "修改"],
                    "menu": "课程信息",
                    "menuJump": "列表",
                    "tableName": "kechengxinxi"
                }], "menu": "课程信息管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "课程类型",
                    "menuJump": "列表",
                    "tableName": "kechengleixing"
                }], "menu": "课程类型管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "我的收藏管理",
                    "tableName": "storeup"
                }], "menu": "我的收藏管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "轮播图管理",
                    "tableName": "config"
                }, {"buttons": ["新增", "查看", "修改", "删除"], "menu": "在线客服", "tableName": "chat"}],
                "menu": "系统管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "已完成订单",
                    "tableName": "orders/已完成"
                }, {
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "已发货订单",
                    "tableName": "orders/已发货"
                }, {
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "未支付订单",
                    "tableName": "orders/未支付"
                }, {
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "已取消订单",
                    "tableName": "orders/已取消"
                }, {
                    "buttons": ["新增", "查看", "修改", "删除", "发货"],
                    "menu": "已支付订单",
                    "tableName": "orders/已支付"
                }, {"buttons": ["新增", "查看", "修改", "删除"], "menu": "已退款订单", "tableName": "orders/已退款"}],
                "menu": "订单管理"
            }],
            "frontMenu": [{
                "child": [{
                    "buttons": ["查看", "查看评论"],
                    "menu": "课程信息列表",
                    "menuJump": "列表",
                    "tableName": "kechengxinxi"
                }], "menu": "课程信息模块"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "否",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "管理员",
            "tableName": "users"
        }, {
            "backMenu": [{
                "child": [{
                    "buttons": ["查看评论", "查看"],
                    "menu": "课程信息",
                    "menuJump": "列表",
                    "tableName": "kechengxinxi"
                }], "menu": "课程信息管理"
            }, {
                "child": [{"buttons": ["查看", "修改", "删除"], "menu": "我的收藏管理", "tableName": "storeup"}],
                "menu": "我的收藏管理"
            }, {
                "child": [{
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "已完成订单",
                    "tableName": "orders/已完成"
                }, {
                    "buttons": ["查看", "修改", "删除", "确认收货"],
                    "menu": "已发货订单",
                    "tableName": "orders/已发货"
                }, {
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "未支付订单",
                    "tableName": "orders/未支付"
                }, {
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "已取消订单",
                    "tableName": "orders/已取消"
                }, {
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "已支付订单",
                    "tableName": "orders/已支付"
                }, {"buttons": ["查看", "修改", "删除"], "menu": "已退款订单", "tableName": "orders/已退款"}],
                "menu": "订单管理"
            }],
            "frontMenu": [{
                "child": [{
                    "buttons": ["查看", "查看评论"],
                    "menu": "课程信息列表",
                    "menuJump": "列表",
                    "tableName": "kechengxinxi"
                }], "menu": "课程信息模块"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "是",
            "hasFrontLogin": "是",
            "hasFrontRegister": "是",
            "roleName": "用户",
            "tableName": "yonghu"
        }, {
            "backMenu": [{
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除", "查看评论"],
                    "menu": "课程信息",
                    "menuJump": "列表",
                    "tableName": "kechengxinxi"
                }], "menu": "课程信息管理"
            }, {
                "child": [{"buttons": ["查看", "修改", "删除"], "menu": "我的收藏管理", "tableName": "storeup"}],
                "menu": "我的收藏管理"
            }],
            "frontMenu": [{
                "child": [{
                    "buttons": ["查看", "查看评论"],
                    "menu": "课程信息列表",
                    "menuJump": "列表",
                    "tableName": "kechengxinxi"
                }], "menu": "课程信息模块"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "是",
            "hasFrontLogin": "是",
            "hasFrontRegister": "是",
            "roleName": "教师",
            "tableName": "jiaoshi"
        }]
    }
}
export default menu;
