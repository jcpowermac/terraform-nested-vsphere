{
  "__version": "2.13.0",
  "__comments": "Sample template to deploy a vCenter Server Appliance with an embedded Platform Services Controller on a vCenter Server instance.",
  "new_vcsa": {
    "vc": {
      "__comments": [
        "'datacenter' must end with a datacenter name, and only with a datacenter name. ",
        "'target' must end with an ESXi hostname, a cluster name, or a resource pool name. ",
        "The item 'Resources' must precede the resource pool name. ",
        "All names are case-sensitive. ",
        "For details and examples, refer to template help, i.e. vcsa-deploy {install|upgrade|migrate} --template-help"
      ],
      "hostname": "${vc_hostname}",
      "username": "${vc_username}",
      "password": "${vc_password}",
      "deployment_network": "${vc_deployment_network}",
      "datacenter": ["${vc_datacenter}"],
      "datastore": "${vc_datastore}",
      "target": ["${vc_target}"]
    },
    "appliance": {
      "__comments": [
        "You must provide the 'deployment_option' key with a value, which will affect the VCSA's configuration parameters, such as the VCSA's number of vCPUs, the memory size, the storage size, and the maximum numbers of ESXi hosts and VMs which can be managed. For a list of acceptable values, run the supported deployment sizes help, i.e. vcsa-deploy --supported-deployment-sizes"
      ],
      "thin_disk_mode": true,
      "deployment_option": "${appliance_deployment_option}",
      "name": "${appliance_name}"
    },
    "network": {
      "ip_family": "${network_ip_family}",
      "mode": "${network_mode}",
      "ip": "${network_ip}",
      "dns_servers": ["${network_dns_servers}"],
      "prefix": "${network_prefix}",
      "gateway": "${network_gateway}",
      "system_name": "${network_system_name}"
    },
    "os": {
      "password": "${os_password}",
      "ntp_servers": "${os_ntp_servers}",
      "ssh_enable": false
    },
    "sso": {
      "password": "${sso_password}",
      "domain_name": "${sso_domain_name}"
    }
  },
  "ceip": {
    "description": {
      "__comments": [
        "++++VMware Customer Experience Improvement Program (CEIP)++++",
        "VMware's Customer Experience Improvement Program (CEIP) ",
        "provides VMware with information that enables VMware to ",
        "improve its products and services, to fix problems, ",
        "and to advise you on how best to deploy and use our ",
        "products. As part of CEIP, VMware collects technical ",
        "information about your organization's use of VMware ",
        "products and services on a regular basis in association ",
        "with your organization's VMware license key(s). This ",
        "information does not personally identify any individual. ",
        "",
        "Additional information regarding the data collected ",
        "through CEIP and the purposes for which it is used by ",
        "VMware is set forth in the Trust & Assurance Center at ",
        "http://www.vmware.com/trustvmware/ceip.html . If you ",
        "prefer not to participate in VMware's CEIP for this ",
        "product, you should disable CEIP by setting ",
        "'ceip_enabled': false. You may join or leave VMware's ",
        "CEIP for this product at any time. Please confirm your ",
        "acknowledgement by passing in the parameter ",
        "--acknowledge-ceip in the command line.",
        "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
      ]
    },
    "settings": {
      "ceip_enabled": true
    }
  }
}
