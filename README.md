使用方式：

npm install react-native-nxnativemodule-example --save 
rnpm link 


然后在需要调用的JS 文件中：

import { LineChart } from 'react-native-nxnativemodule-example'; 导入组件

就可以正常使用：

```=
栗子🌰:

class NativeModuleTest extends Component {
  render() {
    return (
      <View>
        <CycleScrollView style ={styles.container}
          imageURLStringsGroup = {bannerImgs}
          pageControlStyle = 'animated'/>
        {/* <View>
          <LineView style={{width:200,height:200}}
          lineData = {['1','2','5']}
          xLabel = {['1','2','5']}
          cssStyle = {[0,10,dimensionsWidth,200]}/>
        </View> */}
        <View>
          <LineChart style={{width:400,height:400}}
            lineValues = {['2','7','4']}
            xlabel = {['2','7','4']}
            LineChartFrame = {[0,0,350,200]}/>
        </View>
      </View>
        );
  }
}


```
