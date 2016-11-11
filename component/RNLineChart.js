'use strict'
import React,{Component,PropTypes} from 'react';
import {
  requireNativeComponent,
}from 'react-native';

var NXLineChart = requireNativeComponent('RNLineChart',RNLineChart);
export default class  RNLineChart extends Component {
  render(){
    return(
      <NXLineChart {...this.props} />
    );
  }
}
RNLineChart.propTypes = {
  LineChartFrame:PropTypes.array,
  xLabel:PropTypes.array,
  lineValues:PropTypes.array,
};
