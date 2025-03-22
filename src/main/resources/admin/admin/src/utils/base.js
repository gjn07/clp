const base = {
    get() {
        return {
            url: "http://localhost:8080/clp/",
            name: "clp",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/clp/front/index.html'
        };
    },
    getProjectName() {
        return {
            projectName: "在线视频教育平台"
        }
    }
}
export default base
