使用方式：


>npm install react-native-nxnativemodule-example --save 

>rnpm link 


然后在需要调用的JS 文件中：

import { LineChart, BarChart } from 'react-native-nxnativemodule-example'; 导入组件

就可以正常使用：

```=
栗子🌰:

class NativeModuleTest extends Component {
  render() {
    return (
      <View>
          <BarChart style = {{width:200,height:200}}
          xLabel = {['102','70','40','90']}
          barData= {['102','70','40','90']}
          barChartFrame= {[0,10,200,200]} />
        
          <LineChart style={{width:400,height:400}}
            lineValues = {['2','7','4']}
            xLabel = {['2','7','4']}
            LineChartFrame = {[0,0,350,200]}/>
      </View>
        );
  }
}


```
