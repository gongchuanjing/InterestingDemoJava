new Vue({
    el:"#app",
    data:{
        profitSummary:{
            userId:"",
            posnumber:"",
            posnumberProfit:"",
            posconsumeNumber:"",
            posconsumeNumberProfit:""
        }
    },
    methods:{
        getProfitSummary:function(userid){
            //在当前方法中定义一个变量，表明是vue对象
            var _this = this;
            axios.get('/InterviewPOS/getProfitSummary.do',{params:{id:userid}})
                .then(function (response) {
                    _this.profitSummary = response.data;//响应数据给profitSummary赋值
                    console.log(response);
                })
                .catch(function (error) {
                    console.log(error);
                    alert(error);
                })
        }
    },
    created:function() {//当我们页面加载的时候触发请求
        this.getProfitSummary(1);
    }
});