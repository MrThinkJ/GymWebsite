$(function () {
    "use strict";




    // chart 1

    var numberUsersText = document.getElementById("numberUsers").innerText;
    var targetUsersText = document.getElementById("targetUsers").innerText;

    var numberUsers = parseInt(numberUsersText.replace(/\D/g, ''));
    var targetUsers = parseInt(targetUsersText.replace(/\D/g, ''));

    var percentage = (numberUsers / targetUsers) * 100;

    var options = {
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
                    image: undefined,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: 'front',
                    dropShadow: {
                        enabled: false,
                        top: 3,
                        left: 0,
                        blur: 4,
                        opacity: 0.24
                    }
                },
                track: {
                    background: 'rgba(0, 0, 0, 0.1)',
                    strokeWidth: '67%',
                    margin: 0,
                    dropShadow: {
                        enabled: false,
                        top: -3,
                        left: 0,
                        blur: 4,
                        opacity: 0.35
                    }
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

    var chart = new ApexCharts(document.querySelector("#chart1"), options);
    chart.render();





    // chart 2

    // Lấy giá trị từ HTML
    var onlineUsersText = document.getElementById("onlineUsers").innerText;
    var totalUsersText = document.getElementById("targetUsers").innerText;

    // Chuyển đổi giá trị thành số
    var onlineUsers = parseInt(onlineUsersText);
    var totalUsers = parseInt(totalUsersText);

    // Tính toán phần trăm
    var onlinePercentage = (onlineUsers / totalUsers) * 100;

    var options = {
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
                        show: false, // Ẩn tên "Users Online"
                    },
                    value: {
                        show: true,
                        fontSize: '20px',
                        color: '#111',
                        offsetY: 10,
                        formatter: function (val) {
                            return onlinePercentage.toFixed(2) + "%"; // Hiển thị phần trăm với 2 chữ số thập phân
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
        labels: [''], // Xóa chữ "Users Online"
    };

    var chart = new ApexCharts(document.querySelector("#chart2"), options);
    chart.render();







    // chart 3

    var options = {
        series: [{
            name: "Net Sales",
            data: [4, 10, 12, 17, 25, 30, 40, 55, 68]
        }],
        chart: {
            //width:150,
            height: 120,
            type: 'bar',
            sparkline: {
                enabled: !0
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
            curve: 'smooth',
            color: ['transparent']
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                gradientToColors: ['#7928ca'],
                shadeIntensity: 1,
                type: 'vertical',
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100, 100, 100]
            },
        },
        colors: ["#ff0080"],
        plotOptions: {
            bar: {
                horizontal: false,
                borderRadius: 4,
                borderRadiusApplication: 'around',
                borderRadiusWhenStacked: 'last',
                columnWidth: '45%',
            }
        },

        tooltip: {
            theme: "dark",
            fixed: {
                enabled: !1
            },
            x: {
                show: !1
            },
            y: {
                title: {
                    formatter: function (e) {
                        return ""
                    }
                }
            },
            marker: {
                show: !1
            }
        },
        xaxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
        }
    };

    var chart = new ApexCharts(document.querySelector("#chart3"), options);
    chart.render();




    // chart 4

    var options = {
        series: [{
            name: "Net Sales",
            data: [4, 25, 14, 34, 10, 39]
        }],
        chart: {
            //width:150,
            height: 105,
            type: 'line',
            sparkline: {
                enabled: !0
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
            curve: 'straight'
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                gradientToColors: ['#00f2fe'],
                shadeIntensity: 1,
                type: 'vertical',
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100, 100, 100]
            },
        },

        colors: ["#ee0979"],
        tooltip: {
            theme: "dark",
            fixed: {
                enabled: !1
            },
            x: {
                show: !1
            },
            y: {
                title: {
                    formatter: function (e) {
                        return ""
                    }
                }
            },
            marker: {
                show: !1
            }
        },
        markers: {
            show: !1,
            size: 5,
        },
        xaxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
        }
    };

    var chart = new ApexCharts(document.querySelector("#chart4"), options);
    chart.render();




    // chart 5

    const data = [
        parseInt(document.getElementById("numberRegisterInMon").textContent),
        parseInt(document.getElementById("numberRegisterInTue").textContent),
        parseInt(document.getElementById("numberRegisterInWed").textContent),
        parseInt(document.getElementById("numberRegisterInThu").textContent),
        parseInt(document.getElementById("numberRegisterInFri").textContent),
        parseInt(document.getElementById("numberRegisterInSat").textContent),
        parseInt(document.getElementById("numberRegisterInSun").textContent)
      ];
    
      var options = {
        series: [{
          name: "Daily Registers",
          data: data
        }],
        chart: {
          foreColor: "#9ba7b2",
          height: 280,
          type: 'bar',
          toolbar: {
            show: !1
          },
          sparkline: {
            enabled: !1
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
            borderRadiusApplication: 'around',
            borderRadiusWhenStacked: 'last',
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
            show: !1
          }
        },
      };
    
      var chart = new ApexCharts(document.querySelector("#chart5"), options);
      chart.render();



// Collect data from HTML
const classEntries = document.querySelectorAll("#class-data .class-entry");
const dataList = [];
const labels = [];

classEntries.forEach(entry => {
  const label = entry.querySelector("p").textContent.trim();
  const value = parseInt(entry.querySelector(".class-value").textContent.trim());
  labels.push(label);
  dataList.push(value);
});

// Chart 6
var options = {
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

var chart = new ApexCharts(document.querySelector("#chart6"), options);
chart.render();




    // chart 7
    var options = {
        series: [{
            name: "Total Accounts",
            data: [4, 10, 25, 12, 25, 18, 40, 22, 7]
        }],
        chart: {
            //width:150,
            height: 105,
            type: 'area',
            sparkline: {
                enabled: !0
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
                gradientToColors: ['#fc185a'],
                shadeIntensity: 1,
                type: 'vertical',
                opacityFrom: 0.8,
                opacityTo: 0.2,
                //stops: [0, 100, 100, 100]
            },
        },

        colors: ["#ffc107"],
        tooltip: {
            theme: "dark",
            fixed: {
                enabled: !1
            },
            x: {
                show: !1
            },
            y: {
                title: {
                    formatter: function (e) {
                        return ""
                    }
                }
            },
            marker: {
                show: !1
            }
        },
        xaxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
        }
    };

    var chart = new ApexCharts(document.querySelector("#chart7"), options);
    chart.render();



    // chart 8

    var options = {
        series: [{
            name: "Total Sales",
            data: [4, 10, 25, 12, 25, 18, 40, 22, 7]
        }],
        chart: {
            //width:150,
            height: 210,
            type: 'area',
            sparkline: {
                enabled: !0
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
            curve: 'straight'
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                gradientToColors: ['#17ad37'],
                shadeIntensity: 1,
                type: 'vertical',
                opacityFrom: 0.7,
                opacityTo: 0.0,
                //stops: [0, 100, 100, 100]
            },
        },
        colors: ["#98ec2d"],
        tooltip: {
            theme: "dark",
            fixed: {
                enabled: !1
            },
            x: {
                show: !1
            },
            y: {
                title: {
                    formatter: function (e) {
                        return ""
                    }
                }
            },
            marker: {
                show: !1
            }
        },
        markers: {
            show: !1,
            size: 5,
        },
        xaxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
        }
    };

    var chart = new ApexCharts(document.querySelector("#chart8"), options);
    chart.render();






});