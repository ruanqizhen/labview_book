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
        id: 'ramp_up__',
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
        id: 'basic__',
      },
      items: [ 
        'data_number', 
        'data_array', 
        'data_string', 
        'data_graph',
        'structure_cond_seq',
        'data_custome_control',
        'data_and_controls',
        'basic_dev_environment',
      ],
    },
    {
      type: 'category',
      label: '常用程序结构模式',
      link: {
        type: 'doc',
        id: 'pattern__',
      },
      items: [ 
        'pattern_error_handling', 
        'pattern_reentrant_vi', 
        'pattern_state_machine', 
        'pattern_ui',
        'pattern_global_data',
        'pattern_pass_by_ref',
        'pattern_file',
        'external_call_dll', 
        'external_connectivity',
      ],
    },
    {
      type: 'category',
      label: '程序规范与优化',
      link: {
        type: 'doc',
        id: 'optimization__',
      },
      items: [ 
        'debug_ide', 
        'debug_errors',
        'pattern_algorithm',
        'debug_performance',
        'debug_dll',		
        'optimization_mechanism', 
        'optimization_memory', 
        'optimization_multi_thread', 
        'optimization_coding_style',
        'optimization_inline_subvi',
      ],
    },
    {
      type: 'category',
      label: 'VI 服务器',
      link: {
        type: 'doc',
        id: 'vi_server__',
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
        id: 'measurement__',
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
      label: '管理 LabVIEW 项目',
      link: {
        type: 'doc',
        id: 'manage__',
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
        id: 'ui__',
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
      label: '面向对象编程',
      link: {
        type: 'doc',
        id: 'oop__',
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
      link: {
        type: 'doc',
        id: 'appendix__',
      },
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
