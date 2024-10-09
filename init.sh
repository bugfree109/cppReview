#!/bin/bash

# 设置基础路径
base_path="src"

# 创建主目录
mkdir -p "$base_path"

# 定义目录结构
declare -A structure=(
    ["01_Basics"]="DataTypes ControlFlow Functions Arrays_Strings"
    ["02_OOP"]="Classes_Objects Inheritance Polymorphism"
    ["03_MemoryManagement"]="DynamicAllocation RAII SmartPointers"
    ["04_STL"]="Containers Algorithms Iterators"
    ["05_ModernCPP"]="CPP11_14_Features CPP17_Features CPP20_Features"
    ["06_Templates"]="FunctionTemplates ClassTemplates"
    ["07_Concurrency"]="ThreadManagement Synchronization AsyncProgramming"
    ["08_Projects"]="WeeklyProjects FinalProject"
    ["Resources"]="Books OnlineCourses UsefulLinks"
)

# 创建目录结构
for dir in "${!structure[@]}"; do
    for subdir in ${structure[$dir]}; do
        mkdir -p "$base_path/$dir/$subdir"
    done
done

echo "Directory structure created successfully!"