#!/bin/sh

work_dir=$(mktemp -d)
curr_dir_name=$(basename $(pwd))
mkdir ${work_dir}/kibana
cp -r ../${curr_dir_name} ${work_dir}/kibana
cd ${work_dir}
zip -r ${curr_dir_name}.zip kibana
cd -
mv ${work_dir}/${curr_dir_name}.zip .
