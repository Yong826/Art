
// 더블텝 메뉴
$(function () {
    $('.tabcontent > div').hide();
    $('.tabnav a').click(function () {
        $('.tabcontent > div').hide().filter(this.hash).fadeIn();
        $('.tabnav a').removeClass('active');
        $(this).addClass('active');
        return false;
    }).filter(':eq(0)').click();
});
// 달력
$(function () {
    var today = new Date();
    var date = new Date();

    $("input[name=preMon]").click(function () { // 이전달
        $("#calendar > tbody > td").remove();
        $("#calendar > tbody > tr").remove();
        today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
        buildCalendar();
    })

    $("input[name=nextMon]").click(function () { //다음달
        $("#calendar > tbody > td").remove();
        $("#calendar > tbody > tr").remove();
        today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
        buildCalendar();
    })


    function buildCalendar() {

        nowYear = today.getFullYear();
        nowMonth = today.getMonth();
        firstDate = new Date(nowYear, nowMonth, 1).getDate();
        firstDay = new Date(nowYear, nowMonth, 1).getDay(); //1st의 요일
        lastDate = new Date(nowYear, nowMonth + 1, 0).getDate();

        if ((nowYear % 4 === 0 && nowYear % 100 !== 0) || nowYear % 400 === 0) { //윤년 적용
            lastDate[1] = 29;
        }

        $(".year_mon").text(nowYear + "년 " + (nowMonth + 1) + "월");

        for (i = 0; i < firstDay; i++) { //첫번째 줄 빈칸
            $("#calendar tbody:last").append("<td></td>");
        }
        for (i = 1; i <= lastDate; i++) { // 날짜 채우기
            plusDate = new Date(nowYear, nowMonth, i).getDay();
            if (plusDate == 0) {
                $("#calendar tbody:last").append("<tr></tr>");
            }
            $("#calendar tbody:last").append("<td class='date'>" + i + "</td>");
        }
        if ($("#calendar > tbody > td").length % 7 != 0) { //마지막 줄 빈칸
            for (i = 1; i <= $("#calendar > tbody > td").length % 7; i++) {
                $("#calendar tbody:last").append("<td></td>");
            }
        }
        $(".date").each(function (index) { // 오늘 날짜 표시
            if (nowYear == date.getFullYear() && nowMonth == date.getMonth() && $(".date").eq(index).text() == date.getDate()) {
                $(".date").eq(index).addClass('colToday');
            }
        })
    }
    buildCalendar();


})

