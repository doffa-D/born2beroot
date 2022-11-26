# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    monitoring.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdagdagu <hdagdagu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/05 19:53:12 by hdagdagu          #+#    #+#              #
#    Updated: 2022/11/06 17:59:23 by hdagdagu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/bash
wall "	# Architecture	:	$(uname -a)
	# CPU physical	:	$(nproc)
	# vCPU			:	$(cat /proc/cpuinfo | grep processor | wc -l)
	# Memory Usage	:	$(free -m | awk '$1 == "Mem:" {print $3"/"$2 "MB"}') $(free | awk '$1 == "Mem:" {printf("(%.1f"), $3/$2*100}') %)
	# Disk Usage		:	$(df -Bg | grep "/dev/" | grep -v "/boot" | awk '{ud += $3} {fd += $2} END {print ud"/"fd "GB (" ud/fd*100 " %)"}')
	# CPU load		:	$(top -bn1 | grep '^%Cpu' | awk '{printf("%.1f%%"), $2}')
	# Last boot		:	$(who -b | awk '{print $3,$4}')
	# LVM use			:	$(lsblk | grep "lvm" | awk '{if ($1) {print "yes";exit} else {print "no"}}')
	# Connections TCP	:	$(cat /proc/net/sockstat{,6}| grep "TCP:" | awk '{printf $3" ESTABLISHED"}')
	# User Log		:	$(users | wc -w)
	# Network			:	IP $(hostname -I | awk '{print $1}') $(ip link | grep "link/ether" | awk '{print "("$2")"}')
	# Sudo			:	$(journalctl _COMM=sudo | grep COMMAND | wc -l) cmd"
