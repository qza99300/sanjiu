var province=$("#province"),city=$("#city"),town=$("#town");
for(var i=0;i<provinceList.length;i++){
    addEle(province,provinceList[i].name);
}
function addEle(ele,value){
    var optionStr="";
    optionStr="<option value="+value+">"+value+"</option>";
    ele.append(optionStr);
}
function removeEle(ele){
    ele.find("option").remove();
    var optionStar="<option value="+"请选择"+">"+"请选择"+"</option>";
    ele.append(optionStar);
}
var provinceText,cityText,cityItem;
province.on("change",function(){
    provinceText=$(this).val();
    $.each(provinceList,function(i,item){
        if(provinceText == item.name){
            cityItem=i;
            return cityItem
        }
    });
    removeEle(city);
    removeEle(town);
    $.each(provinceList[cityItem].cityList,function(i,item){
        addEle(city,item.name)
    })
});
city.on("change",function(){
    cityText=$(this).val();
    removeEle(town);
    $.each(provinceList,function(i,item){
        if(provinceText == item.name){
            cityItem=i;
            return cityItem
        }
    });
    $.each(provinceList[cityItem].cityList,function(i,item){
        if(cityText == item.name){
            for(var n=0;n<item.areaList.length;n++){
                addEle(town,item.areaList[n])
            }
        }
    });
});

//二开始

var province1=$("#province1"),city1=$("#city1"),town1=$("#town1");
for(var i=0;i<provinceList.length;i++){
    addEle(province1,provinceList[i].name);
}
function addEle(ele,value){
    var optionStr="";
    optionStr="<option value="+value+">"+value+"</option>";
    ele.append(optionStr);
}
function removeEle(ele){
    ele.find("option").remove();
    var optionStar="<option value="+"请选择"+">"+"请选择"+"</option>";
    ele.append(optionStar);
}
var provinceText,cityText,cityItem;
province1.on("change",function(){
    provinceText=$(this).val();
    $.each(provinceList,function(i,item){
        if(provinceText == item.name){
            cityItem=i;
            return cityItem
        }
    });
    removeEle(city1);
    removeEle(town1);
    $.each(provinceList[cityItem].cityList,function(i,item){
        addEle(city1,item.name)
    })
});
city1.on("change",function(){
    cityText=$(this).val();
    removeEle(town1);
    $.each(provinceList,function(i,item){
        if(provinceText == item.name){
            cityItem=i;
            return cityItem
        }
    });
    $.each(provinceList[cityItem].cityList,function(i,item){
        if(cityText == item.name){
            for(var n=0;n<item.areaList.length;n++){
                addEle(town1,item.areaList[n])
            }
        }
    });
});



//三开始

var province2=$("#province2"),city2=$("#city2"),town2=$("#town2");
for(var i=0;i<provinceList.length;i++){
    addEle(province2,provinceList[i].name);
}
function addEle(ele,value){
    var optionStr="";
    optionStr="<option value="+value+">"+value+"</option>";
    ele.append(optionStr);
}
function removeEle(ele){
    ele.find("option").remove();
    var optionStar="<option value="+"请选择"+">"+"请选择"+"</option>";
    ele.append(optionStar);
}
var provinceText,cityText,cityItem;
province2.on("change",function(){
    provinceText=$(this).val();
    $.each(provinceList,function(i,item){
        if(provinceText == item.name){
            cityItem=i;
            return cityItem
        }
    });
    removeEle(city2);
    removeEle(town2);
    $.each(provinceList[cityItem].cityList,function(i,item){
        addEle(city2,item.name)
    })
});
city2.on("change",function(){
    cityText=$(this).val();
    removeEle(town2);
    $.each(provinceList,function(i,item){
        if(provinceText == item.name){
            cityItem=i;
            return cityItem
        }
    });
    $.each(provinceList[cityItem].cityList,function(i,item){
        if(cityText == item.name){
            for(var n=0;n<item.areaList.length;n++){
                addEle(town2,item.areaList[n])
            }
        }
    });
});