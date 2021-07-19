#! /bin/bash

red='\e[91m'
green='\e[92m'
yellow='\e[93m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'
_red() { echo -e ${red}$*${none}; }
_green() { echo -e ${green}$*${none}; }
_yellow() { echo -e ${yellow}$*${none}; }
_magenta() { echo -e ${magenta}$*${none}; }
_cyan() { echo -e ${cyan}$*${none}; }

#  start****************公共函数****************
error() {

	echo -e "\n$red 输入错误！$none\n"

}

#系统菜单--子菜单
system_menu() {
	while :; do
	_green 1.磁盘清理
	echo
	_green 2.防火墙管理
	echo
	_green 3.返回主菜单

	read -p "$(echo -e "请选择 [${magenta}1-3${none}]:")" choose
		case $choose in
		1)
			echo “系进入下一步菜单逻辑”
			break
			;;
		2)
			echo “进入防火墙管理菜单”
			break
			;;
		3)
			return_main
			break
			;;	
		*)
			error
			;;
		esac
	done
}

#主菜单公共类
main_public() {

	echo "---------------------------------------------------"
    echo "|                   mingyuanyun                   |"
    echo "|..........明源云自动化LinuxTools工具集...........|"
	echo "|************** 系统:Centos6+  ***************|"
	echo "|******** 帮助说明: 码云地址:www.mayun.com *******|"
    echo "---------------------------------------------------"
	echo
	echo
	echo
	_green 1.系统管理 
	echo
	_red 2.脚本更新
	echo
}

return_main() {

	while :; do
	#主菜单
	main_public
	read -p "$(echo -e "选择后按Enter确定 [${magenta}1-2${none}]:")" choose
	case $choose in
	1)
		#echo “系统管理进入下一步菜单逻辑”
		system_menu
		break
		;;
	2)
		#echo “进行代码拉取更新替换”
		break
		;;
	*)
		error
		;;
	esac
done
}

#  end****************公共函数****************



# start****************系统管理菜单栏****************
#系统管理-磁盘清理

diskclear() {
	echo "磁盘清理"
}
#防火墙管理
firewall() {
	echo "firewall"
}

#....后面一堆需求

#  end****************系统管理菜单栏****************



# start****************脚本更新****************
# 这里安装git 或者是wget -o 下载raw 脚本拉取替换当前脚本

# end****************脚本更新****************

#第一菜单栏
clear
while :; do
	#主菜单
	main_public
	read -p "$(echo -e "请选择后按Enter确定 [${magenta}1-2${none}]:")" choose
	case $choose in
	1)
		#echo “系统管理进入下一步菜单逻辑”
		system_menu
		break
		;;
	2)
		#echo “进行代码拉取更新替换”
		break
		;;
	*)
		error
		;;
	esac
done

