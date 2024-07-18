$(function () {
    "use strict";

    // Chart 1
    var numberUsersText = document.getElementById("numberUsers").innerText;
    var targetUsersText = document.getElementById("targetUsers").innerText;

    var numberUsers = parseInt(numberUsersText.replace(/\D/g, ''));
    var targetUsers = parseInt(targetUsersText.replace(/\D/g, ''));

    var percentage = (numberUsers / targetUsers) * 100;

    var options1 = {
        series: [percentage],
        chart: {
            height: 180,
            type: 'radialBar',
            toolbar: {
                show: false
            }
        },
        plotOptions: {
            radialBar: {
                startAngle: -115,
                endAngle: 115,
                hollow: {
                    margin: 0,
                    size: '80%',
                    background: 'transparent',
                    position: 'front'
                },
                track: {
                    background: 'rgba(0, 0, 0, 0.1)',
                    strokeWidth: '67%',
                },
                dataLabels: {
                    show: true,
                    name: {
                        offsetY: -10,
                        show: true,
                        color: '#888',
                        fontSize: '17px',
                        text: 'Total Orders'
                    },
                    value: {
                        offsetY: 10,
                        color: '#111',
                        fontSize: '24px',
                        show: true,
                        formatter: function (val) {
                            return targetUsers.toFixed(2) + "%";
                        }
                    },
                    total: {
                        show: true,
                        label: 'Now',
                        formatter: function (w) {
                            return percentage.toFixed(2) + '%';
                        }
                    }
                }
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                type: 'horizontal',
                shadeIntensity: 0.5,
                gradientToColors: ['#ffd200'],
                inverseColors: true,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100]
            }
        },
        colors: ["#ee0979"],
        stroke: {
            lineCap: 'round'
        },
        labels: ['Total Orders'],
    };

    var chart1 = new ApexCharts(document.querySelector("#chart1"), options1);
    chart1.render();

    // Chart 2
    var onlineUsersText = document.getElementById("onlineUsers").innerText;
    var totalUsersText = document.getElementById("percentageChange").innerText;

    var onlineUsers = parseInt(onlineUsersText.replace(/\D/g, ''));
    var totalUsers = parseInt(totalUsersText.replace(/\D/g, ''));

    var onlinePercentage = (onlineUsers / totalUsers) * 100;

    var options2 = {
        series: [onlinePercentage],
        chart: {
            height: 150,
            type: 'radialBar',
            sparkline: {
                enabled: true
            }
        },
        plotOptions: {
            radialBar: {
                hollow: {
                    size: '50%',
                },
                dataLabels: {
                    name: {
                        show: false,
                    },
                    value: {
                        show: true,
                        fontSize: '20px',
                        color: '#111',
                        offsetY: 10,
                        formatter: function (val) {
                            return onlinePercentage.toFixed(2) + "%";
                        }
                    }
                }
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                type: 'vertical',
                shadeIntensity: 0.5,
                gradientToColors: ['#02c27a'],
                inverseColors: true,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100]
            }
        },
        colors: ["#02c27a"],
        stroke: {
            lineCap: 'round'
        },
        labels: [''],
    };

    var chart2 = new ApexCharts(document.querySelector("#chart2"), options2);
    chart2.render();

    $(document).ready(function () {
        // Lấy tất cả các phần tử literal
        var mon = document.getElementById('<%= numberRegisterInMon.ClientID %>');
        var tue = document.getElementById('<%= numberRegisterInTue.ClientID %>');
        var wed = document.getElementById('<%= numberRegisterInWed.ClientID %>');
        var thu = document.getElementById('<%= numberRegisterInThu.ClientID %>');
        var fri = document.getElementById('<%= numberRegisterInFri.ClientID %>');
        var sat = document.getElementById('<%= numberRegisterInSat.ClientID %>');
        var sun = document.getElementById('<%= numberRegisterInSun.ClientID %>');

        // Kiểm tra xem tất cả các phần tử có tồn tại không
        if (mon && tue && wed && thu && fri && sat && sun) {
            const data = [
                parseInt(mon.textContent),
                parseInt(tue.textContent),
                parseInt(wed.textContent),
                parseInt(thu.textContent),
                parseInt(fri.textContent),
                parseInt(sat.textContent),
                parseInt(sun.textContent)
            ];

            console.log("Data for chart 5:", data);

            var options5 = {
                series: [{
                    name: "Daily Registers",
                    data: data
                }],
                chart: {
                    foreColor: "#9ba7b2",
                    height: 280,
                    type: 'bar',
                    toolbar: {
                        show: false
                    },
                    sparkline: {
                        enabled: false
                    },
                    zoom: {
                        enabled: false
                    }
                },
                dataLabels: {
                    enabled: false
                },
                stroke: {
                    width: 1,
                    curve: 'smooth'
                },
                plotOptions: {
                    bar: {
                        horizontal: false,
                        borderRadius: 4,
                        columnWidth: '45%',
                    }
                },
                fill: {
                    type: 'gradient',
                    gradient: {
                        shade: 'dark',
                        gradientToColors: ['#009efd'],
                        shadeIntensity: 1,
                        type: 'vertical',
                        opacityFrom: 1,
                        opacityTo: 1,
                        stops: [0, 100, 100, 100]
                    },
                },
                colors: ["#2af598"],
                grid: {
                    show: true,
                    borderColor: 'rgba(255, 255, 255, 0.1)',
                },
                xaxis: {
                    categories: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                },
                tooltip: {
                    theme: "dark",
                    marker: {
                        show: false
                    }
                },
            };

            var chart5 = new ApexCharts(document.querySelector("#chart5"), options5);
            chart5.render();
        } else {
            console.error("One or more elements are not found");
        }
    });


    // Chart 6
    const classEntries = document.querySelectorAll("#class-data .class-entry");
    const dataList = [];
    const labels = [];

    classEntries.forEach(entry => {
        const label = entry.querySelector("p").textContent.trim();
        const value = parseInt(entry.querySelector(".class-value").textContent.trim());
        labels.push(label);
        dataList.push(value);
    });

    var options6 = {
        series: dataList,
        chart: {
            height: 290,
            type: 'donut',
        },
        labels: labels,
        legend: {
            position: 'bottom',
            show: false
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                gradientToColors: ['#ee0979', '#17ad37', '#ec6ead'],
                shadeIntensity: 1,
                type: 'vertical',
                opacityFrom: 1,
                opacityTo: 1,
            },
        },
        colors: ["#ff6a00", "#98ec2d", "#3494e6"],
        dataLabels: {
            enabled: false
        },
        plotOptions: {
            pie: {
                donut: {
                    size: "85%"
                }
            }
        },
        responsive: [{
            breakpoint: 480,
            options: {
                chart: {
                    height: 270
                },
                legend: {
                    position: 'bottom',
                    show: false
                }
            }
        }]
    };

    var chart6 = new ApexCharts(document.querySelector("#chart6"), options6);
    chart6.render();

    // Chart 7
    var options7 = {
        series: [{
            name: "Total Accounts",
            data: [4, 10, 25, 12, 25, 18, 40, 22, 7]
        }],
        chart: {
            height: 105,
            type: 'area',
            sparkline: {
                enabled: true
            },
            zoom: {
                enabled: false
            }
        },
        dataLabels: {
            enabled: false
        },
        stroke: {
            width: 3,
            curve: 'smooth'
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                gradientToColors: ['#02c27a'],
                shadeIntensity: 1,
                type: 'vertical',
                opacityFrom: 1,
                opacityTo: 1,
            },
        },
        colors: ["#02c27a"],
        yaxis: {
            show: false
        },
        legend: {
            show: false
        },
        tooltip: {
            theme: 'dark',
            x: {
                show: false
            },
        },
    };

    var chart7 = new ApexCharts(document.querySelector("#chart7"), options7);
    chart7.render();
});
