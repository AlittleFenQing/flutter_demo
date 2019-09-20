# flutter_demo
flutter常用demo
## demo1---常用的底部导航栏
  - BottomNavigationWidget
  - StatefulWidget:具有可变状态（state）的窗口组件（widget，使用这个要根据变化，调整State值）
## demo2--不规则底部导航栏
  - primarySeatch:现在支持18种主题样本
  - floatingActionButton(FAB):可交互的浮动按钮
    - 属性：onPress：点击相应事件
           tooltip：长按显示的文字
           child：放置子元素，一般放置Icon Widget
  - floatingActonButtonLocation：FloatingActionButtonLocation.centerDocked--将悬浮按钮和低栏融合
  - BottomAppBar widget：底部工具栏
    - 常用属性：color
              shape：设置底栏形状，一般使用这个都是为了和FAB融合，值都是CirclarNotcheRectangle()，有缺口的圆形矩形；
              child：里面放置widget；
