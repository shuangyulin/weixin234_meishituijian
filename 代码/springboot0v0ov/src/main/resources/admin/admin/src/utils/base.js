const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot0v0ov/",
            name: "springboot0v0ov",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot0v0ov/front/h5/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "微信小程序的中国各地美食推荐平台"
        } 
    }
}
export default base
