使用方式：

npm install react-native-nxnativemodule-example --save 
rnpm link 


然后在需要调用的JS 文件中：

import { LineChart } from 'react-native-nxnativemodule-example'; 导入组件

就可以正常使用：

  <View>
          <LineChart style={{width:400,height:400}}
            lineValues = {['2','7','4']}
            xlabel = {['2','7','4']}
            LineChartFrame = {[0,0,350,200]}/>
   </View>
