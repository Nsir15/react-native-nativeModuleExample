'use strict'
import React ,{ Component ,PropTypes} from 'react';
import {
  requireNativeComponent
}from 'react-native';

var NXBarChart = requireNativeComponent('RNBarChart',RNBarChart);
export default class  RNBarChart extends Component {
  render(){
    return(
      <NXBarChart {...this.props} />
    );
  }
}

RNBarChart.propTypes = {
  barChartFrame:PropTypes.array,
  xLabel:PropTypes.array,
  barData:PropTypes.array,

};
