// @ts-check

/** @type {import('@docusaurus/plugin-content-docs').SidebarsConfig} */
const sidebars = {
  tutorialSidebar: [
    {
      type: 'category',
      label: '前言',
      link: {
        type: 'doc',
        id: 'README',
      },
      items: [],
    },
    {
      type: 'category',
      label: '初识 LabVIEW',
      link: {
        type: 'doc',
        id: 'ramp_up',
      },
      items: [ 
		'preface_labview',
        'ramp_up_install', 
        'ramp_up_hello_world', 
		'ramp_up_complex_vis',
        'ramp_up_how_to_learn', 
      ],
    },
    {
      type: 'category',
      label: 'LabVIEW 编程基础',
      link: {
        type: 'doc',
        id: 'data',
      },
      items: [ 
        'data_number', 
        'data_array', 
		'data_graph',
        'data_string', 
		'structure_cond_seq',
		'data_custome_control',
        'data_and_controls',
		'ramp_up_dev_environment',
      ],
    },
    {
      type: 'category',
      label: '常用程序结构模式',
      link: {
        type: 'doc',
        id: 'pattern',
      },
      items: [ 
        'pattern_error_handling', 
        'pattern_reentrant_vi', 
        'pattern_state_machine', 
		'pattern_ui',
        'pattern_global_data',
        'pattern_pass_by_ref',
		'pattern_file',
      ],
    },
    {
      type: 'category',
      label: '调用外部程序',
      link: {
        type: 'doc',
        id: 'external_call',
      },
      items: [ 
        'external_call_dll', 
        'external_connectivity', 
      ],
    },
    {
      type: 'category',
      label: 'VI 服务器',
      link: {
        type: 'doc',
        id: 'vi_server',
      },
      items: [ 
        'vi_server_for_ui', 
        'vi_server_for_subvi', 
        'vi_server_for_vi', 
        'vi_server_for_net',
      ],
    },
    {
      type: 'category',
      label: '测试测量应用程序设计',
      link: {
        type: 'doc',
        id: 'measurement',
      },
      items: [ 
        'measurement_r_p_d', 
        'measurement_express_vi', 
        'measurement_daq', 
        'measurement_display',
        'measurement_storage',
      ],
    },
    {
      type: 'category',
      label: '调试',
      link: {
        type: 'doc',
        id: 'debug',
      },
      items: [ 
        'debug_ide', 
        'debug_probe', 
        'debug_disable', 
        'debug_errors',
        'debug_performance',
        'debug_dll',
      ],
    },
    {
      type: 'category',
      label: '管理 LabVIEW 项目',
      link: {
        type: 'doc',
        id: 'manage',
      },
      items: [ 
        'manage_project', 
        'manage_library', 
        'manage_release', 
      ],
    },
    {
      type: 'category',
      label: '界面设计',
      link: {
        type: 'doc',
        id: 'ui',
      },
      items: [ 
        'ui_principle', 
        'ui_standard', 
        'ui_cases', 
        'ui_modulization',
        'ui_xcontrol',
      ],
    },
    {
      type: 'category',
      label: '代码风格与优化',
      link: {
        type: 'doc',
        id: 'optimization',
      },
      items: [ 
        'optimization_mechanism', 
        'optimization_memory', 
        'optimization_multi_thread', 
        'optimization_coding_style',
        'optimization_inline_subvi',
      ],
    },
    {
      type: 'category',
      label: '面向对象编程',
      link: {
        type: 'doc',
        id: 'oop',
      },
      items: [ 
        'oop_basic', 
        'oop_class', 
        'oop_class_pro_con', 
        'oop_interface',
        'oop_use_cases',
        'oop_generic',
        'oop_xnode',
      ],
    },
    {
      type: 'category',
      label: '附录',
      items: [
	    'appendix_problem',
		'appendix_languages',
		'appendix_reference', 
		'appendix_epilogue',
		{
		  type: 'link',
		  label: '示例代码',
		  href: 'https://github.com/ruanqizhen/labview_book/tree/main/code',
		},
		{
		  type: 'link',
		  label: '问题讨论和意见反馈',
		  href: 'https://github.com/ruanqizhen/labview_book/discussions',
		},
		{
		  type: 'link',
		  label: '作者个人主页',
		  href: 'https://qizhen.xyz',
		},
	  ],
    },
  ],

};

module.exports = sidebars;