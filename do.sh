#!/usr/bin/env bash

declare -a files=("V20_ESSIntegration_2018-12-10_1009.nxs" "V20_ESSIntegration_2018-12-10_1805.nxs" "V20_ESSIntegration_2018-12-11_0915.nxs" "V20_ESSIntegration_2018-12-11_0943.nxs" "V20_ESSIntegration_2018-12-11_0951.nxs" "V20_ESSIntegration_2018-12-11_0952.nxs" "V20_ESSIntegration_2018-12-11_1018.nxs" "V20_ESSIntegration_2018-12-11_1713.nxs" "V20_ESSIntegration_2018-12-11_1743.nxs" "V20_ESSIntegration_2018-12-11_1847.nxs" "V20_ESSIntegration_2018-12-11_1914.nxs" "V20_ESSIntegration_2018-12-11_1923.nxs" "V20_ESSIntegration_2018-12-12_1209.nxs" "V20_ESSIntegration_2018-12-13T15:53:48.nxs" "V20_ESSIntegration_2018-12-13T16:20:00.nxs" "V20_ESSIntegration_2018-12-13_0942.nxs" "V20_ESSIntegration_2018-12-13_1028.nxs" "V20_ESSIntegration_2018-12-14T09:25:00.nxs" "V20_ESSIntegration_20181210.nxs" "possible_stop_time_problem.txt" "v20-2018-12-14T11:22:26+0100.nxs" "v20-2018-12-14T11:23:38+0100.nxs" "v20-2018-12-14T15:12:53+0100.nxs" "v20-2018-12-14T16:12:01+0100.nxs" "v20-2018-12-14T16:12:26+0100.nxs" "v20-2018-12-15T16:56:22+0100.nxs" "v20-2018-12-15T18:10:22+0100.nxs" "v20-2018-12-17T07:13:37+0100.nxs" "v20-2018-12-17T19:31:02+0100.nxs" "v20-2018-12-18T09:18:46+0100.nxs" "v20-2018-12-18T10:42:33+0100.nxs" "v20-2018-12-18T11:01:28+0100.nxs" "v20-2018-12-19T08:17:32+0100.nxs" "v20-2018-12-19T08:56:00+0100.nxs" "v20_choppers-20180126.nxs" "v20_choppers-20180127.nxs" "v20_choppers-20180128.nxs" "v20_choppers-20180129.nxs" "v20_choppers-20180130.nxs" "v20_choppers-20180131.nxs" "v20_choppers-20180201.nxs" "v20_choppers-20180202.nxs" "v20_choppers-20180203.nxs" "v20_choppers-20180204.nxs" "v20_choppers-20180205.nxs" "v20_choppers-20180206.nxs" "v20_choppers-20180207.nxs" "v20_choppers-20180208.nxs" "v20_choppers-20180209.nxs" "v20_choppers-20180210.nxs" "v20_choppers-20180211.nxs" "v20_choppers-20180212.nxs" "v20_choppers-20180213.nxs" "v20_choppers-20180214.nxs" "v20_choppers-20180215.nxs" "v20_choppers-20180216.nxs" "v20_choppers-20180217.nxs" "v20_choppers-20180218.nxs" "v20_choppers-20180219.nxs" "v20_choppers-20180220.nxs" "v20_choppers-20180221.nxs" "v20_choppers-20180222.nxs" "v20_choppers-20180223.nxs" "v20_choppers-20180224.nxs" "v20_choppers-20180225.nxs" "v20_choppers-20180226.nxs" "v20_choppers-20180227.nxs" "v20_choppers-20180228.nxs" "v20_choppers-20180301.nxs" "v20_choppers-20180302.nxs" "v20_choppers-20180303.nxs" "v20_choppers-20180304.nxs" "v20_choppers-20180305.nxs" "v20_choppers-20180306.nxs" "v20_choppers-20180307.nxs" "v20_choppers-20180308.nxs" "v20_choppers-20180309.nxs" "v20_choppers-20180310.nxs" "v20_choppers-20180311.nxs" "v20_choppers-20180312.nxs" "v20_choppers-20180313.nxs" "v20_choppers-20180314.nxs" "v20_choppers-20180315.nxs" "v20_choppers-20180316.nxs" "v20_choppers-20180317.nxs" "v20_choppers-20180318.nxs" "v20_choppers-20180319.nxs" "v20_choppers-20180320.nxs" "v20_choppers-20180321.nxs" "v20_choppers-20180322.nxs" "v20_choppers-20180323.nxs" "v20_choppers-20180324.nxs" "v20_choppers-20180325.nxs" "v20_choppers-20180326.nxs" "v20_choppers-20180327.nxs" "v20_choppers-20180328.nxs" "v20_choppers-20180329.nxs" "v20_choppers-20180330.nxs" "v20_choppers-20180331.nxs" "v20_choppers-20180401.nxs" "v20_choppers-20180402.nxs" "v20_choppers-20180403.nxs" "v20_choppers-20180404.nxs" "v20_choppers-20180405.nxs" "v20_choppers-20180406.nxs" "v20_choppers-20180407.nxs" "v20_choppers-20180408.nxs" "v20_choppers-20180409.nxs" "v20_choppers-20180410.nxs" "v20_choppers-20180411.nxs" "v20_choppers-20180412.nxs" "v20_choppers-20180413.nxs" "v20_choppers-20180414.nxs" "v20_choppers-20180415.nxs" "v20_choppers-20180416.nxs" "v20_choppers-20180417.nxs" "v20_choppers-20180418.nxs" "v20_choppers-20180419.nxs" "v20_choppers-20180420.nxs" "v20_choppers-20180421.nxs" "v20_choppers-20180422.nxs" "v20_choppers-20180423.nxs" "v20_choppers-20180424.nxs" "v20_choppers-20180425.nxs" "v20_choppers-20180426.nxs" "v20_choppers-20180427.nxs" "v20_choppers-20180428.nxs" "v20_choppers-20180429.nxs" "v20_choppers-20180430.nxs" "v20_choppers-20180501.nxs" "v20_choppers-20180502.nxs" "v20_choppers-20180503.nxs" "v20_choppers-20180504.nxs" "v20_choppers-20180505.nxs" "v20_choppers-20180506.nxs" "v20_choppers-20180507.nxs" "v20_choppers-20180508.nxs" "v20_choppers-20180509.nxs" "v20_choppers-20180510.nxs" "v20_choppers-20180511.nxs" "v20_choppers-20180512.nxs" "v20_choppers-20180513.nxs" "v20_choppers-20180514.nxs" "v20_choppers-20180515.nxs" "v20_choppers-20180516.nxs" "v20_choppers-20180517.nxs" "v20_choppers-20180518.nxs" "v20_choppers-20180519.nxs" "v20_choppers-20180520.nxs" "v20_choppers-20180521.nxs" "v20_choppers-20180522.nxs" "v20_choppers-20180523.nxs" "v20_choppers-20180524.nxs" "v20_choppers-20180525.nxs" "v20_choppers-20180526.nxs" "v20_choppers-20180527.nxs" "v20_choppers-20180528.nxs" "v20_choppers-20180529.nxs" "v20_choppers-20180530.nxs" "v20_choppers-20180531.nxs" "v20_choppers-20180601.nxs" "v20_choppers-20180602.nxs" "v20_choppers-20180603.nxs" "v20_choppers-20180604.nxs" "v20_choppers-20180605.nxs" "v20_choppers-20180606.nxs" "v20_choppers-20180607.nxs" "v20_choppers-20180608.nxs" "v20_choppers-20180609.nxs" "v20_choppers-20180610.nxs" "v20_choppers-20180611.nxs" "v20_choppers-20180612.nxs" "v20_choppers-20180613.nxs" "v20_choppers-20180614.nxs" "v20_choppers-20180615.nxs" "v20_choppers-20180616.nxs" "v20_choppers-20180617.nxs" "v20_choppers-20180618.nxs" "v20_choppers-20180619.nxs" "v20_choppers-20180620.nxs" "v20_choppers-20180621.nxs" "v20_choppers-20180622.nxs" "v20_choppers-20180623.nxs" "v20_choppers-20180624.nxs" "v20_choppers-20180625.nxs" "v20_choppers-20180626.nxs" "v20_choppers-20180627.nxs" "v20_choppers-20180628.nxs" "v20_choppers-20180629.nxs" "v20_choppers-20180630.nxs" "v20_choppers-20180701.nxs" "v20_choppers-20180702.nxs" "v20_choppers-20180703.nxs" "v20_choppers-20180704.nxs" "v20_choppers-20180705.nxs" "v20_choppers-20180706.nxs" "v20_choppers-20180707.nxs" "v20_choppers-20180708.nxs" "v20_choppers-20180709.nxs" "v20_choppers-20180710.nxs" "v20_choppers-20180711.nxs" "v20_choppers-20180712.nxs" "v20_choppers-20180713.nxs" "v20_choppers-20180714.nxs" "v20_choppers-20180715.nxs" "v20_choppers-20180716.nxs" "v20_choppers-20180717.nxs" "v20_choppers-20180718.nxs" "v20_choppers-20180719.nxs" "v20_choppers-20180720.nxs" "v20_choppers-20180721.nxs" "v20_choppers-20180722.nxs" "v20_choppers-20180723.nxs" "v20_choppers-20181011.nxs" "v20_choppers-20181012.nxs" "v20_choppers-20181013.nxs" "v20_choppers-20181014.nxs" "v20_choppers-20181015.nxs" "v20_choppers-20181016.nxs" "v20_choppers-20181017.nxs" "v20_choppers-20181018.nxs" "v20_choppers-20181019.nxs" "v20_choppers-20181020.nxs" "v20_choppers-20181021.nxs" "v20_choppers-20181022.nxs" "v20_choppers-20181023.nxs" "v20_choppers-20181024.nxs" "v20_choppers-20181025.nxs" "v20_choppers-20181026.nxs" "v20_choppers-20181027.nxs" "v20_choppers-20181028.nxs" "v20_choppers-20181029.nxs" "v20_choppers-20181030.nxs" "v20_choppers-20181031.nxs" "v20_choppers-20181101.nxs" "v20_choppers-20181102.nxs" "v20_choppers-20181103.nxs" "v20_choppers-20181104.nxs" "v20_choppers-20181105.nxs" "v20_choppers-20181106.nxs" "v20_choppers-20181107.nxs")
echo $files

path=/data/kafka-to-nexus
var=0
for file in ${files[@]}; do
var=$((var+1))

scp v20-udder1:$path/$file .
scp $file login:/users/detector/experiments/v20/2018_12_13
rm $file

done