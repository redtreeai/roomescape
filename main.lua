--预加载资源
function love.load()
    title_img = love.graphics.newImage("images/rs1title.jpg")
    --游戏title
    brief_img = love.graphics.newImage("images/brief.jpg")
    --故事背景图
    title_sound = love.audio.newSource("sounds/title.wav", "stream")
    toilet_sound = love.audio.newSource("sounds/dian.mp3", "stream")
    brief_sound = love.audio.newSource("sounds/ghost.wav", "stream")
    liangjian_sound = love.audio.newSource("sounds/liangjian.mp3", "stream")
    yangtai_sound = love.audio.newSource("sounds/miao.mp3", "stream")
    over_sound = love.audio.newSource("sounds/winner.mp3", "stream")
    tips_sound = love.audio.newSource("sounds/tips.mp3", "stream")

    --title北京音乐
    black_img = love.graphics.newImage("images/black.jpg")
    --黑背景
    room_img = love.graphics.newImage("images/room.png")
    --房间
    toilet_img = love.graphics.newImage("images/toilet.jpg")
    toilet2_img = love.graphics.newImage("images/toilet2.jpg")
    --厕所
    yangtai_img = love.graphics.newImage("images/yangtai.jpg")
    yangtai2_img = love.graphics.newImage("images/yangtai2.jpg")
    --阳台
    left_img = love.graphics.newImage("images/left.png")
    --箭头左
    right_img = love.graphics.newImage("images/right.png")
    --箭头右
    tv_img = love.graphics.newImage("images/tv.jpg")
    --亮剑剧照
    over_img = love.graphics.newImage("images/over.jpg")

    --tips素材
    tips0 = love.graphics.newImage("images/tips/tips0.jpg")
    tips1 = love.graphics.newImage("images/tips/tips1.jpg")
    tips2 = love.graphics.newImage("images/tips/tips2.jpg")
    tips3 = love.graphics.newImage("images/tips/tips3.jpg")
    tips5 = love.graphics.newImage("images/tips/tips5.jpg")
    tips6 = love.graphics.newImage("images/tips/tips6.jpg")
    tips7 = love.graphics.newImage("images/tips/tips7.jpg")
    tips8 = love.graphics.newImage("images/tips/tips8.jpg")
    tips9 = love.graphics.newImage("images/tips/tips9.jpg")
    tips4 = love.graphics.newImage("images/tips/tips4.jpg")
    tips11 = love.graphics.newImage("images/tips/tips11.jpg")
    tips12= love.graphics.newImage("images/tips/tips12.jpg")
    tips13= love.graphics.newImage("images/tips/tips13.jpg")
    tips14= love.graphics.newImage("images/tips/tips14.jpg")
    tips15= love.graphics.newImage("images/tips/tips15.jpg")
    tips16= love.graphics.newImage("images/tips/tips16.jpg")
    tips17= love.graphics.newImage("images/tips/tips17.jpg")
    tips18= love.graphics.newImage("images/tips/tips18.jpg")
    tips19= love.graphics.newImage("images/tips/tips19.jpg")
    tips20= love.graphics.newImage("images/tips/tips20.jpg")
    tips21= love.graphics.newImage("images/tips/tips21.jpg")
    tips22= love.graphics.newImage("images/tips/tips22.jpg")
    tips23= love.graphics.newImage("images/tips/tips23.jpg")
    tips24= love.graphics.newImage("images/tips/tips24.jpg")
    tips25= love.graphics.newImage("images/tips/tips25.jpg")
    tips26= love.graphics.newImage("images/tips/tips26.jpg")
    tips27= love.graphics.newImage("images/tips/tips27.jpg")
    tips28= love.graphics.newImage("images/tips/tips28.jpg")
    tips29= love.graphics.newImage("images/tips/tips29.jpg")
    tips30= love.graphics.newImage("images/tips/tips30.jpg")
    tips31= love.graphics.newImage("images/tips/tips31.jpg")
    tips32= love.graphics.newImage("images/tips/tips32.jpg")
    tips33= love.graphics.newImage("images/tips/tips33.jpg")
    tips34= love.graphics.newImage("images/tips/tips34.jpg")


    --纸团交互
    tips10 = love.graphics.newImage("images/tips/tips10.jpg")
    --获得钥匙
    --线索道具
    i_paper = love.graphics.newImage("images/items/paper.png")
    --纸团
    i_yaoshi1 = love.graphics.newImage("images/items/yaoshi1.png")
    i_yaoshi2 = love.graphics.newImage("images/items/yaoshi2.png")
    --钥匙
    i_xiaoyugan = love.graphics.newImage("images/items/xiaoyugan.png")
    --小鱼干
    i_shoutao = love.graphics.newImage("images/items/shoutao.png")
    --手套
    i_ipad = love.graphics.newImage("images/items/ipad.png")
    --ipad
    i_camara = love.graphics.newImage("images/items/camara.png")
    --相机
    i_who = love.graphics.newImage("images/items/who.png")
    --who
    i_yunlong = love.graphics.newImage("images/items/yunlong.png")
    --云龙
    i_chengyigan = love.graphics.newImage("images/items/chengyigan.png")
    --撑衣干
    i_taotao = love.graphics.newImage("images/items/taotao.png")
    --套套
    i_cd = love.graphics.newImage("images/items/cd.png")




    --场景控制
    --鼠标按下时间
    click_time = nil
    ctip = nil
    --当前提示对象
    istip = false
    --是否处于提示状态
    istvopen = false
    --电视机是否开启
    is_paper_taked = false
    --纸张是否被捡走
    is_yaoshi2_taked = false
    --金钥匙是否被捡走
    is_chengyigan_taked = false
    --撑衣干是否被捡走
    is_taotao_taked= false
    --套套是否被取走
    is_shoutao_taked= false
    --手套是否被取走
    is_ipad_taked =false
    --ipad
    is_toilet_open =false
    --是否进去过厕所
    is_xiaoyugan_taked =false
    is_cd_taked=false
    is_camara_taked =false

    cur_scene = 'title'
    --当前场景
    brfy = 500
    --蛋幕起始高度
    items = {}
    --获得道具列表
    items_len = 0
    --道具数量

    item_index = 0
    --当前物品栏列表初始位置
    click_item_name = ''
    --当前使用的物品名
    --道具交互
    paper_checking = false
    --是否正在校验paper
    get_yaoshi1 = false
    --以获得1号钥匙 （厕所的）
    yaoshi1_checking = false
    yaoshi1_using =false
    yaoshi2_using = false
    taotao_checking = false
    shoutao_checking =false
    shoutao_using = false
    taotao_using=false
    xiaoyugan_checking =false
    xiaoyugan_using = false
    ipad_checking = false
    ipad_using =false
    cd_checking =false
    cd_using = false
    cd_in =false
    camara_checking =false
    camara_using =false
    chengyigan_checking =false
    chengyigan_using=false
    zhaopian_check=false
    zhaopian_using =false

    cur_mouse_x = 0
    cur_mouse_y = 0

end


--更新函数
function love.update()

    --实时获取鼠标位置
    cur_mouse_x = love.mouse.getX()
    cur_mouse_y = love.mouse.getY()

    --print(cur_mouse_x, cur_mouse_y)
    --print(item_index)

    if (love.mouse.isDown('2') or istip==true) then
       --点击右键取消物品拾取状态
        yaoshi1_using =false
        yaoshi2_using = false
        shoutao_using = false
        ipad_using =false
        xiaoyugan_using =false
        chengyigan_using = false
        camara_using =false
        cd_using =false
    end

    if (cur_scene=='over')then
        if (love.mouse.isDown('1')) then
              if (cur_mouse_x >418 and cur_mouse_x<577 and cur_mouse_y>406 and cur_mouse_y<449 )then
                 --再来一局
                  --重置数据
                  cur_scene='brief'
                  --场景控制
    --鼠标按下时间
    click_time = nil
    ctip = nil
    --当前提示对象
    istip = false
    --是否处于提示状态
    istvopen = false
    --电视机是否开启
    is_paper_taked = false
    --纸张是否被捡走
    is_yaoshi2_taked = false
    --金钥匙是否被捡走
    is_chengyigan_taked = false
    --撑衣干是否被捡走
    is_taotao_taked= false
    --套套是否被取走
    is_shoutao_taked= false
    --手套是否被取走
    is_ipad_taked =false
    --ipad
    is_toilet_open =false
    --是否进去过厕所
    is_xiaoyugan_taked =false
    is_cd_taked=false
    is_camara_taked =false

    cur_scene = 'title'
    --当前场景
    brfy = 500
    --蛋幕起始高度
    items = {}
    --获得道具列表
    items_len = 0
    --道具数量

    item_index = 0
    --当前物品栏列表初始位置
    click_item_name = ''
    --当前使用的物品名
    --道具交互
    paper_checking = false
    --是否正在校验paper
    get_yaoshi1 = false
    --以获得1号钥匙 （厕所的）
    yaoshi1_checking = false
    yaoshi1_using =false
    yaoshi2_using = false
    taotao_checking = false
    shoutao_checking =false
    shoutao_using = false
    taotao_using=false
    xiaoyugan_checking =false
    xiaoyugan_using = false
    ipad_checking = false
    ipad_using =false
    cd_checking =false
    cd_using = false
    cd_in =false
    camara_checking =false
    camara_using =false
    chengyigan_checking =false
    chengyigan_using=false
    zhaopian_check=false
    zhaopian_using =false

    cur_mouse_x = 0
    cur_mouse_y = 0
              end
              if (cur_mouse_x >419 and cur_mouse_x<581 and cur_mouse_y>490 and cur_mouse_y<533 )then
                  cur_scene='exit'
                 --退出游戏
              end

        end
    end


    if (cur_scene == 'room') then
        --以下为鼠标交互事件
        if (love.mouse.isDown('1')) then
            if (istip == false) then
                if (cur_mouse_x >766 and cur_mouse_x<882 and cur_mouse_y>423 and cur_mouse_y<508 and is_cd_taked==false)
                    --按保险柜
                then
                    if (yaoshi2_using==true) then
                        ctip = tips25
                        istip = true
                        love.timer.sleep(0.5)
                        is_cd_taked = true
                        table.insert(items,'cd')
                        --给数组添加元素
                        items_len = table_leng(items)
                    else
                        ctip = tips1
                        istip = true
                        yaoshi2_using=false
                        love.timer.sleep(0.5)
                        end

                elseif(cur_mouse_x >673 and cur_mouse_x<716 and cur_mouse_y>299 and cur_mouse_y<349)
                    --充电器
                then
                    if (ipad_using ==true)then
                         ctip = tips28
                        istip = true
                        love.timer.sleep(0.5)
                     else
                    ctip = tips2
                    istip = true
                    love.timer.sleep(0.5)
                    end
                elseif(cur_mouse_x >631 and cur_mouse_x<762 and cur_mouse_y>374 and cur_mouse_y<413 and is_ipad_taked ==false)
                    --左边抽屉
                then
                    ctip = tips9
                    istip = true
                    love.timer.sleep(0.5)
                    is_ipad_taked=true
                    table.insert(items,'ipad')
                    --给数组添加元素
                    items_len = table_leng(items)
                elseif(cur_mouse_x >22 and cur_mouse_x<104 and cur_mouse_y>523 and cur_mouse_y<594 and is_taotao_taked==false)
                    --枕头
                then
                    ctip = tips3
                    istip = true
                    love.timer.sleep(0.5)
                    is_taotao_taked=true
                    table.insert(items,'taotao')
                    --给数组添加元素
                    items_len = table_leng(items)
                elseif(cur_mouse_x >128 and cur_mouse_x<420 and cur_mouse_y>500 and cur_mouse_y<606 and is_shoutao_taked==false )
                    --被子
                then
                    ctip = tips18
                    istip = true
                    love.timer.sleep(0.5)
                    is_shoutao_taked=true
                    table.insert(items,'shoutao')
                    --给数组添加元素
                    items_len = table_leng(items)
                elseif(cur_mouse_x >15 and cur_mouse_x<47 and cur_mouse_y>46 and cur_mouse_y<123)
                    --人脸识别锁
                then
                    if (zhaopian_using==false)then
                         ctip = tips8
                    istip = true
                    love.timer.sleep(0.5)
                    else
                        --通关
                        zhaopian_using = false
                        cur_scene ='over'
                        end

                elseif(cur_mouse_x >0 and cur_mouse_x<111 and cur_mouse_y>0 and cur_mouse_y<177)
                    --宿舍门
                then
                    ctip = tips7
                    istip = true
                    love.timer.sleep(0.5)
                elseif(cur_mouse_x >480 and cur_mouse_x<682 and cur_mouse_y>28 and cur_mouse_y<112)
                    --sony电视
                then
                    if (istvopen==true)then
                       if(camara_using ==true and cd_in==true)then
                           ctip = tips34
                        istip = true
                        love.timer.sleep(0.5)
                        table.insert(items,'zhaopian')
                    --给数组添加元素
                        items_len = table_leng(items)
                           carama_using=false
                       elseif (camara_using ==true) then
                            ctip = tips33
                        istip = true
                        love.timer.sleep(0.5)
                           else
                       end
                    else
                          ctip = tips5
                    istip = true
                    love.timer.sleep(0.5)
                    end

                elseif((cur_mouse_x >480 and cur_mouse_x<682 and cur_mouse_y>28 and cur_mouse_y<112)==false and camara_using==true)
                    --不拍电视
                then
                    ctip = tips33
                    istip = true
                    love.timer.sleep(0.5)


                elseif(cur_mouse_x >686 and cur_mouse_x<791 and cur_mouse_y>89 and cur_mouse_y<117)
                    --VCD机
                then
                    if (cd_in==true) then
                        ctip = tips31
                        istip = true
                        love.timer.sleep(0.5)
                    else
                        if (cd_using ==true)then
                            ctip = tips31
                            istip = true
                            love.timer.sleep(0.5)
                            cd_in=true
                        else
                         ctip = tips6
                        istip = true
                        love.timer.sleep(0.5)
                        end
                        end
                elseif(cur_mouse_x >468 and cur_mouse_x<475 and cur_mouse_y>49 and cur_mouse_y<54 and istvopen==false)
                    --打开电视
                then
                    istvopen=true
                elseif(cur_mouse_x >469 and cur_mouse_x<476 and cur_mouse_y>74 and cur_mouse_y<80 and istvopen==true)
                    --关闭电视
                then
                    istvopen=false
                elseif(cur_mouse_x >237 and cur_mouse_x<291 and cur_mouse_y>338 and cur_mouse_y<386 and is_paper_taked==false)
                    --捡起纸团
                then
                    is_paper_taked=true
                    table.insert(items,'paper')
                    --给数组添加元素
                    items_len = table_leng(items)
                elseif(cur_mouse_x >106 and cur_mouse_x<284 and cur_mouse_y>5 and cur_mouse_y<178)
                    --进入阳台
                then
                    cur_scene = 'yangtai'
                elseif(cur_mouse_x >942 and cur_mouse_x<1022 and cur_mouse_y>9 and cur_mouse_y<172 )
                    --厕所门交互
                then
                    if (is_toilet_open==false)then
                        if (yaoshi1_using==true) then
                            cur_scene='toilet' --切换到厕所场景
                            is_toilet_open = true
                            yaoshi1_using=false
                         else
                             ctip = tips11
                            istip = true
                            yaoshi1_using=false
                            love.timer.sleep(0.5)
                        end
                    else
                        cur_scene='toilet' --切换到厕所场景
                    end
                end
            else
                   if (paper_checking ==true and cur_mouse_x >448 and cur_mouse_x<490 and cur_mouse_y>443 and cur_mouse_y<466  and get_yaoshi1 == false)then

                    --打开纸团
                    get_yaoshi1 = true
                    table.insert(items,'yaoshi1')
                    --给数组添加元素
                    items_len = table_leng(items)
                    ctip = tips10
                    love.timer.sleep(0.5)
                elseif (yaoshi1_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用钥匙
                    istip = false
                    paper_checking = false
                    yaoshi1_checking = false
                    yaoshi1_using = true
                    love.timer.sleep(0.5)
                 elseif (yaoshi2_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用钥匙2
                    istip = false
                    yaoshi2_checking = false
                    yaoshi2_using = true
                    love.timer.sleep(0.5)
                elseif (taotao_checking ==true and cur_mouse_x >442 and cur_mouse_x<494 and cur_mouse_y>432 and cur_mouse_y<454 and is_xiaoyugan_taked==false)then
                    --检查套套
                    is_xiaoyugan_taked =true
                    table.insert(items,'xiaoyugan')
                    items_len = table_leng(items)
                    ctip = tips19
                    love.timer.sleep(0.5)
                elseif (shoutao_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用手套
                    istip = false
                    paper_checking = false
                    yaoshi1_checking = false
                    shoutao_checking = false
                    shoutao_using = true
                    love.timer.sleep(0.5)
                  elseif (xiaoyugan_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用鱼干
                    istip = false
                    xiaoyugan_using = true
                    xiaoyugan_checking =false
                    love.timer.sleep(0.5)
                    elseif (ipad_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用ipad
                    istip = false
                    ipad_using = true
                    ipad_checking=false
                    love.timer.sleep(0.5)
                  elseif (cd_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用CD
                    istip = false
                    cd_using = true
                    cd_checking=false
                    love.timer.sleep(0.5)
                   elseif (chengyigan_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用撑衣干
                    istip = false
                    chengyigan_using = true
                    chengyigan_checking =false
                    love.timer.sleep(0.5)
                   elseif (camara_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用照相机
                    istip = false
                    camara_using = true
                    camara_checking =false
                    love.timer.sleep(0.5)
                     elseif (zhaopian_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用照相机
                    istip = false
                    zhaopian_using = true
                    zhaopian_checking =false
                    love.timer.sleep(0.5)
                   else

                    istip = false
                    paper_checking = false
                    yaoshi1_checking = false
                    love.timer.sleep(0.5)
         end
            end
        end
    end

    --厕所场景内
    if(cur_scene=='toilet')then
        if (love.mouse.isDown('1')) then
            if (istip == false) then
                if (cur_mouse_x >320 and cur_mouse_x<647 and cur_mouse_y>576 and cur_mouse_y<637)then
                    --回到房间
                    cur_scene='room'
                elseif (cur_mouse_x >794 and cur_mouse_x<831 and cur_mouse_y>372 and cur_mouse_y<400)then
                     if(shoutao_using==false )then
                        ctip = tips14
                        istip = true
                        love.timer.sleep(0.5)
                     else
                         if (is_yaoshi2_taked==false) then
                            is_yaoshi2_taked = true
                            table.insert(items,'yaoshi2')
                        --给数组添加元素
                            items_len = table_leng(items)
                         shoutao_using=false
                             love.timer.sleep(0.5)
                         end
                     end
                      elseif (cur_mouse_x >192 and cur_mouse_x<252 and cur_mouse_y>20 and cur_mouse_y<80)then
                     if(is_camara_taked==false) then
                         if(chengyigan_using==false) then
                             ctip = tips15
                            istip = true
                            love.timer.sleep(0.5)
                         else
                             ctip = tips32
                            istip = true
                            is_camara_taked=true
                            table.insert(items,'camara')
                            --给数组添加元素
                            items_len = table_leng(items)
                            chengyigan_checking=false
                            chengyigan_using=false
                            love.timer.sleep(0.5)
                             end
                     end
                     elseif(camara_using ==true)then
                        ctip = tips33
                        istip = true
                        love.timer.sleep(0.5)
                end
            else

              if (paper_checking ==true and cur_mouse_x >448 and cur_mouse_x<490 and cur_mouse_y>443 and cur_mouse_y<466  and get_yaoshi1 == false)then

                    --打开纸团
                    get_yaoshi1 = true
                    table.insert(items,'yaoshi1')
                    --给数组添加元素
                    items_len = table_leng(items)
                    ctip = tips10
                    love.timer.sleep(0.5)
                elseif (yaoshi1_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用钥匙
                    istip = false
                    paper_checking = false
                    yaoshi1_checking = false
                    yaoshi1_using = true
                    love.timer.sleep(0.5)
                 elseif (yaoshi2_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用钥匙2
                    istip = false
                    yaoshi2_checking = false
                    yaoshi2_using = true
                    love.timer.sleep(0.5)
                elseif (taotao_checking ==true and cur_mouse_x >442 and cur_mouse_x<494 and cur_mouse_y>432 and cur_mouse_y<454 and is_xiaoyugan_taked==false)then
                    --检查套套
                    is_xiaoyugan_taked =true
                    table.insert(items,'xiaoyugan')
                    items_len = table_leng(items)
                    ctip = tips19
                    love.timer.sleep(0.5)
                elseif (shoutao_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用手套
                    istip = false
                    paper_checking = false
                    yaoshi1_checking = false
                    shoutao_checking = false
                    shoutao_using = true
                    love.timer.sleep(0.5)
                  elseif (xiaoyugan_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用鱼干
                    istip = false
                    xiaoyugan_using = true
                    xiaoyugan_checking =false
                    love.timer.sleep(0.5)
                    elseif (ipad_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用ipad
                    istip = false
                    ipad_using = true
                    ipad_checking=false
                    love.timer.sleep(0.5)
                  elseif (cd_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用CD
                    istip = false
                    cd_using = true
                    cd_checking=false
                    love.timer.sleep(0.5)
                   elseif (chengyigan_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用撑衣干
                    istip = false
                    chengyigan_using = true
                    chengyigan_checking =false
                    love.timer.sleep(0.5)
                   elseif (camara_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用照相机
                    istip = false
                    camara_using = true
                    camara_checking =false
                    love.timer.sleep(0.5)
                   elseif (zhaopian_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用照相机
                    istip = false
                    zhaopian_using = true
                    zhaopian_checking =false
                    love.timer.sleep(0.5)
                   else

                    istip = false
                    paper_checking = false
                    yaoshi1_checking = false
                    love.timer.sleep(0.5)
               end
            end
        end
    end

    --阳台场景内
    if(cur_scene=='yangtai')then
        if (love.mouse.isDown('1')) then
            if (istip == false) then
                if (cur_mouse_x >450 and cur_mouse_x<756 and cur_mouse_y>574 and cur_mouse_y<628)then
                    --回到房间
                    cur_scene='room'
                elseif (cur_mouse_x >814 and cur_mouse_x<864 and cur_mouse_y>200 and cur_mouse_y<497 and is_chengyigan_taked ==false) then
                    is_chengyigan_taked = true
                    table.insert(items,'chengyigan')
                        --给数组添加元素
                    items_len = table_leng(items)
                    love.timer.sleep(0.5)
                elseif(cur_mouse_x >201 and cur_mouse_x<258 and cur_mouse_y>422 and cur_mouse_y<542)
                    --与猫咪互动
                then
                    if(xiaoyugan_using==false)then
                         ctip = tips26
                    istip = true
                    love.timer.sleep(0.5)
                    else
                         ctip = tips29
                    istip = true
                    xiaoyugan_using=false
                    love.timer.sleep(0.5)
                    end
                 elseif(camara_using ==true)then
                        ctip = tips33
                        istip = true
                        love.timer.sleep(0.5)

                end
            else
                  if (paper_checking ==true and cur_mouse_x >448 and cur_mouse_x<490 and cur_mouse_y>443 and cur_mouse_y<466  and get_yaoshi1 == false)then

                    --打开纸团
                    get_yaoshi1 = true
                    table.insert(items,'yaoshi1')
                    --给数组添加元素
                    items_len = table_leng(items)
                    ctip = tips10
                    love.timer.sleep(0.5)
                elseif (yaoshi1_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用钥匙
                    istip = false
                    paper_checking = false
                    yaoshi1_checking = false
                    yaoshi1_using = true
                    love.timer.sleep(0.5)
                 elseif (yaoshi2_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用钥匙2
                    istip = false
                    yaoshi2_checking = false
                    yaoshi2_using = true
                    love.timer.sleep(0.5)
                elseif (taotao_checking ==true and cur_mouse_x >442 and cur_mouse_x<494 and cur_mouse_y>432 and cur_mouse_y<454 and is_xiaoyugan_taked==false)then
                    --检查套套
                    is_xiaoyugan_taked =true
                    table.insert(items,'xiaoyugan')
                    items_len = table_leng(items)
                    ctip = tips19
                    love.timer.sleep(0.5)
                elseif (shoutao_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用手套
                    istip = false
                    paper_checking = false
                    yaoshi1_checking = false
                    shoutao_checking = false
                    shoutao_using = true
                    love.timer.sleep(0.5)
                  elseif (xiaoyugan_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用鱼干
                    istip = false
                    xiaoyugan_using = true
                    xiaoyugan_checking =false
                    love.timer.sleep(0.5)
                    elseif (ipad_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用ipad
                    istip = false
                    ipad_using = true
                    ipad_checking=false
                    love.timer.sleep(0.5)
                  elseif (cd_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用CD
                    istip = false
                    cd_using = true
                    cd_checking=false
                    love.timer.sleep(0.5)
                   elseif (chengyigan_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用撑衣干
                    istip = false
                    chengyigan_using = true
                    chengyigan_checking =false
                    love.timer.sleep(0.5)
                   elseif (camara_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用照相机
                    istip = false
                    camara_using = true
                    camara_checking =false
                    love.timer.sleep(0.5)
                     elseif (zhaopian_checking ==true and cur_mouse_x >435 and cur_mouse_x<487 and cur_mouse_y>424 and cur_mouse_y<446)then
                    --使用照相机
                    istip = false
                    zhaopian_using = true
                    zhaopian_checking =false
                    love.timer.sleep(0.5)
                   else

                    istip = false
                    paper_checking = false
                    yaoshi1_checking = false
                    love.timer.sleep(0.5)
               end
            end
        end
    end


    --场景交互操作共享
    if ((cur_scene =='yangtai' or cur_scene =='room' or cur_scene=='toilet') and love.mouse.isDown('1'))then
        if(cur_mouse_y>636 and cur_mouse_y<768)then
                    --物品栏操作
        --点击物品
        t1,t2 = math.modf(cur_mouse_x/128);
        if (t1<1 and item_index>0) then
            item_index=item_index-1
            love.timer.sleep(0.2)

        elseif (t1>6 and item_index<items_len-6 and items_len>6) then
            item_index=item_index+1
            love.timer.sleep(0.2)
        else
            citem_index = item_index+t1
            --获取当前点击的物品名称
            click_item_name = items[citem_index]
            if (click_item_name=='paper' and paper_checking ==false and get_yaoshi1==false)then
                ctip = tips4
                istip = true
                paper_checking = true
                love.timer.sleep(0.5)
            elseif(click_item_name=='yaoshi1') then
                ctip = tips12
                istip = true
                yaoshi1_checking = true
                love.timer.sleep(0.5)
            elseif(click_item_name=='taotao' and is_xiaoyugan_taked==false) then
                ctip = tips17
                istip = true
                taotao_checking = true
                love.timer.sleep(0.5)
            elseif(click_item_name=='shoutao') then
                ctip = tips21
                istip = true
                shoutao_checking = true
                love.timer.sleep(0.5)
            elseif(click_item_name=='yaoshi2') then
                ctip = tips12
                istip = true
                yaoshi2_checking = true
                love.timer.sleep(0.5)
            elseif(click_item_name=='xiaoyugan') then
                ctip = tips20
                istip = true
                xiaoyugan_checking = true
                love.timer.sleep(0.5)
            elseif(click_item_name=='ipad') then
                ctip = tips27
                istip = true
                ipad_checking = true
                love.timer.sleep(0.5)
             elseif(click_item_name=='cd' and cd_using ==false) then
                ctip = tips30
                istip = true
                cd_checking = true
                love.timer.sleep(0.5)
            elseif(click_item_name=='chengyigan') then
                ctip = tips22
                istip = true
                chengyigan_checking = true
                love.timer.sleep(0.5)
            elseif(click_item_name=='camara') then
                ctip = tips23
                istip = true
                camara_checking = true
                love.timer.sleep(0.5)
            elseif(click_item_name=='zhaopian') then
                ctip = tips24
                istip = true
                zhaopian_checking = true
                love.timer.sleep(0.5)
            end
        end
        end

    end




    --提前点击按钮离开介绍
    if (cur_scene == 'brief' and love.mouse.isDown('1') and brfy < 200) then
        cur_scene = 'room'
    end
    --走完蛋幕进入游戏
    if (brfy > 0) then
        brfy = brfy - 1
    end
    --title界面的交互判断
    if ((cur_scene == 'title' or cur_scene == 'bf_exit') and 350 < cur_mouse_x and cur_mouse_x < 625 and 413 < cur_mouse_y and cur_mouse_y < 465) then
        cur_scene = 'bf_brief'
        if (love.mouse.isDown('1')) then
            cur_scene = 'brief'
        end
    end
    -- 点击开始游戏
    if (cur_scene == 'bf_brief' and love.mouse.isDown('1') and 350 < cur_mouse_x and cur_mouse_x < 625 and 413 < cur_mouse_y and cur_mouse_y < 465) then
        cur_scene = 'brief'
    end
    if ((cur_scene == 'title' or cur_scene == 'bf_brief' or cur_scene == 'bf_exit') and 410 < cur_mouse_x and cur_mouse_x < 545 and 540 < cur_mouse_y and cur_mouse_y < 587) then
        if (love.mouse.isDown('1')) then
            cur_scene = 'exit'
        else
            cur_scene = 'bf_exit'
        end
    end
end





--画布
function love.draw()
    --提示音
    if(istip==ture)then
        love.audio.play(tips_sound)
    end
    --游戏通关
    if (cur_scene == 'over') then
        love.audio.play(over_sound)
        love.graphics.draw(over_img, 0, 0)
    end

    --位于主界面
    if (cur_scene == 'title') then
        love.audio.play(title_sound)
        love.graphics.draw(title_img, 0, 0)
    end

    --位于入场界面
    if (cur_scene == 'brief') then
        love.audio.play(brief_sound)
        love.graphics.draw(brief_img, 0, brfy)
    end

    --选中开始游戏
    if (cur_scene == 'bf_brief') then
        love.audio.play(title_sound)
        love.graphics.draw(title_img, 0, 0)
        love.graphics.rectangle("line", 348, 420, 275, 52)
    end

    --选择退出
    if (cur_scene == 'bf_exit') then
        love.audio.play(title_sound)
        love.graphics.draw(title_img, 0, 0)
        love.graphics.rectangle("line", 415, 540, 135, 47)
    end

    --退出游戏
    if (cur_scene == 'exit') then
        love.event.quit()
    end

    --进入房间
    if (cur_scene == 'room') then
        if(cd_in==true and istvopen==true)then
                love.audio.play(liangjian_sound)
        end
        love.graphics.draw(room_img, 0, 0)
        --房间背景

        if (istvopen==true) then
            if(cd_in ==false)then
                 love.graphics.print('SONY',500,50,0,5,2)
            --打开电视时候显示索尼图标
            else
            love.graphics.draw(tv_img, 494, 43)
                --电视节目 亮剑播放
                end

        end
        if (is_paper_taked==false) then
            love.graphics.draw(i_paper,200,300)
            --地上的纸团
        end



    end

     --进入厕所
    if (cur_scene == 'toilet') then
        love.audio.play(toilet_sound)

        if (is_yaoshi2_taked ==false)then
            love.graphics.draw(toilet_img, 0, 0)
        else
            love.graphics.draw(toilet2_img, 0, 0)
        end
        --背景
    end


        --进入阳台
    if (cur_scene == 'yangtai') then
        love.audio.play(yangtai_sound)

        if (is_chengyigan_taked ==false)then
            love.graphics.draw(yangtai_img, 0, 0)
        else
            love.graphics.draw(yangtai2_img, 0, 0)
        end
        --背景
    end

    if (cur_scene =='yangtai' or cur_scene =='room' or cur_scene=='toilet')then


         for var = 1, 8, 1 do
            love.graphics.rectangle("line", (var - 1) * 128, 636, 128, 128)
            --道具栏
            end
            love.graphics.draw(left_img, 0, 636)
            --左箭头
            love.graphics.draw(right_img, 7 * 128, 636)
            --左箭头
            if (istip == true) then
            love.graphics.draw(ctip, 320, 254)
            --当前提示
            end
            if (items_len>0)then
            --当拥有道具的时候，绘制道具 ，超过6个就画当前队列里面的
            if (items_len>6)then
                n = 6
            else
                n = items_len
            end
                draw_index = 1
                for var = item_index+1,n+item_index,1 do
                    citem = items[var]
                    if (citem=='paper')then
                        cimg = i_paper
                    elseif (citem=='yaoshi1')then
                        cimg = i_yaoshi1
                    elseif (citem=='yaoshi2')then
                        cimg = i_yaoshi2
                    elseif (citem=='taotao')then
                        cimg = i_taotao
                    elseif (citem=='shoutao')then
                        cimg = i_shoutao
                    elseif (citem=='camara')then
                        cimg = i_camara
                    elseif (citem=='ipad')then
                        cimg = i_ipad
                    elseif (citem=='chengyigan')then
                        cimg = i_chengyigan
                    elseif (citem=='xiaoyugan')then
                        cimg = i_xiaoyugan
                    elseif (citem=='cd')then
                        cimg = i_cd
                    elseif (citem=='zhaopian')then
                        cimg = i_yunlong
                    end
                    love.graphics.draw(cimg, draw_index*128,636)
                    draw_index = draw_index+1

                --道具栏
            end

        end
    end
    --当前使用道具绘制
         if (yaoshi1_using ==true) then
            love.graphics.draw(i_yaoshi1,cur_mouse_x,cur_mouse_y)
         elseif (shoutao_using ==true) then
             love.graphics.draw(i_shoutao,cur_mouse_x,cur_mouse_y)
         elseif (yaoshi2_using ==true) then
             love.graphics.draw(i_yaoshi2,cur_mouse_x,cur_mouse_y)
         elseif (xiaoyugan_using ==true) then
             love.graphics.draw(i_xiaoyugan,cur_mouse_x,cur_mouse_y)
         elseif (ipad_using ==true) then
             love.graphics.draw(i_ipad,cur_mouse_x,cur_mouse_y)
         elseif (cd_using ==true) then
             love.graphics.draw(i_cd,cur_mouse_x,cur_mouse_y)
         elseif (chengyigan_using ==true) then
             love.graphics.draw(i_chengyigan,cur_mouse_x,cur_mouse_y)
         elseif (camara_using ==true) then
             love.graphics.draw(i_camara,cur_mouse_x,cur_mouse_y)
         elseif (zhaopian_using ==true) then
             love.graphics.draw(i_yunlong,cur_mouse_x,cur_mouse_y)
         end
    end

--获取数组长度的方法
function table_leng(t)
  local leng=0
  for k, v in pairs(t) do
    leng=leng+1
  end
  return leng;
end



