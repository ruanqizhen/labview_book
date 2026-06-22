import React, { useEffect, useState } from 'react';
import Link from '@docusaurus/Link';

export default function NotFoundContent({ className }) {
  const [seconds, setSeconds] = useState(10);
  const [targetPath, setTargetPath] = useState('/');
  const [isEnglish, setIsEnglish] = useState(false);

  useEffect(() => {
    const isEn = window.location.pathname.startsWith('/en');
    setIsEnglish(isEn);
    const path = isEn ? '/en/' : '/';
    setTargetPath(path);

    const timer = setInterval(() => {
      setSeconds((prev) => {
        if (prev <= 1) {
          clearInterval(timer);
          window.location.href = path;
        }
        return prev - 1;
      });
    }, 1000);
    return () => clearInterval(timer);
  }, []);

  const content = isEnglish ? {
    title: '404_NotFound.vi Block Diagram',
    heading: 'You seem to have lost your way in the data flow',
    desc: 'The connection between the URL node and the page content indicator is broken. Execution halted.',
    secondsText: 'seconds to auto-restart and clear error cluster...',
    btnText: 'Clear Error & Return to Home',
    urlLabel: 'requested url (string)',
    errorLabel: 'error out (cluster)',
    statusLabel: 'status (boolean)',
    codeLabel: 'code (I32)',
    sourceLabel: 'source (string)',
    sourceVal: 'Error 404: The specified path does not exist.',
    delayLabel: 'Wait (sec)',
    tooltip: 'Error: Broken Wire! Path cannot be resolved.',
  } : {
    title: '404_NotFound.vi 程序框图',
    heading: '您似乎在流动的数据中迷失了方向',
    desc: '请求的 URL 节点与页面内容指示器之间的连线断开，程序执行已中断。',
    secondsText: '秒后自动执行熔断并清除错误簇...',
    btnText: '清除错误并返回首页',
    urlLabel: '请求的 URL (字符串)',
    errorLabel: '错误输出 (簇)',
    statusLabel: '状态 (布尔)',
    codeLabel: '代码 (双字节整型)',
    sourceLabel: '源 (字符串)',
    sourceVal: '错误 404: 访问的资源路径不存在。',
    delayLabel: '等待时间 (秒)',
    tooltip: '错误：断开的连线！无法解析当前资源路径。',
  };

  const styles = `
    .vi-container {
      font-family: Consolas, Monaco, 'Andale Mono', 'Ubuntu Mono', monospace, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto;
      border: 2px solid var(--ifm-color-emphasis-300);
      background: var(--ifm-background-color);
      border-radius: 8px;
      box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
      overflow: hidden;
      max-width: 750px;
      margin: 2rem auto;
      text-align: left;
    }
    .vi-toolbar {
      background: var(--ifm-color-emphasis-100);
      border-bottom: 2px solid var(--ifm-color-emphasis-300);
      padding: 0.5rem 1rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 1rem;
      font-size: 0.85rem;
      font-weight: bold;
      color: var(--ifm-color-emphasis-800);
    }
    .vi-toolbar-buttons {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }
    .vi-btn-icon {
      width: 24px;
      height: 24px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 1px solid var(--ifm-color-emphasis-300);
      border-radius: 4px;
      background: var(--ifm-background-color);
      cursor: pointer;
    }
    .vi-btn-icon:hover {
      background: var(--ifm-color-emphasis-200);
    }
    .vi-panel {
      padding: 2.5rem 2rem;
      background-color: #FFFDEE;
      background-image: radial-gradient(#d3c7a0 1.2px, transparent 0);
      background-size: 18px 18px;
      display: flex;
      flex-direction: column;
      gap: 2rem;
      position: relative;
    }
    html[data-theme='dark'] .vi-panel {
      background-color: #1a1a14;
      background-image: radial-gradient(#4d4b35 1.2px, transparent 0);
    }
    .vi-heading {
      font-size: 1.6rem;
      font-weight: 700;
      color: #b25e00;
      margin: 0;
      line-height: 1.3;
    }
    html[data-theme='dark'] .vi-heading {
      color: #ff9d2a;
    }
    .vi-desc {
      font-size: 0.95rem;
      color: var(--ifm-color-emphasis-700);
      margin: 0;
      line-height: 1.5;
    }
    .vi-diagram {
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      align-items: center;
      gap: 1.5rem;
      flex-wrap: wrap;
      margin: 1rem 0;
    }
    @media (max-width: 600px) {
      .vi-diagram {
        flex-direction: column;
        align-items: stretch;
      }
      .vi-wire-container {
        height: 40px;
        width: 100%;
      }
      .vi-wire {
        width: 4px !important;
        height: 100% !important;
        background: repeating-linear-gradient(180deg, #ff3b30, #ff3b30 8px, #000000 8px, #000000 16px) !important;
      }
    }
    .vi-node {
      border: 2px solid #e08b00;
      background: var(--ifm-background-color);
      border-radius: 4px;
      padding: 0.85rem 1rem;
      position: relative;
      min-width: 200px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.05);
      flex: 1;
    }
    html[data-theme='dark'] .vi-node {
      border-color: #ffb84d;
    }
    .vi-node-label {
      position: absolute;
      top: -10px;
      left: 10px;
      background: var(--ifm-background-color);
      padding: 0 0.35rem;
      font-size: 0.75rem;
      font-weight: bold;
      color: #b25e00;
    }
    html[data-theme='dark'] .vi-node-label {
      color: #ffb84d;
    }
    .vi-node-content {
      margin-top: 0.25rem;
      font-size: 0.85rem;
      word-break: break-all;
      background: var(--ifm-color-emphasis-100);
      border: 1px solid var(--ifm-color-emphasis-300);
      padding: 6px;
      border-radius: 3px;
      font-family: inherit;
    }
    .vi-wire-container {
      flex: 0.8;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      min-width: 80px;
      height: 20px;
    }
    .vi-wire {
      width: 100%;
      height: 4px;
      background: repeating-linear-gradient(90deg, #ff3b30, #ff3b30 8px, #000000 8px, #000000 16px);
      box-shadow: 0 1px 3px rgba(0,0,0,0.2);
      animation: wire-flow 1.2s linear infinite;
    }
    @keyframes wire-flow {
      0% { background-position: 0 0; }
      100% { background-position: 16px 0; }
    }
    .vi-wire-x {
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
      width: 24px;
      height: 24px;
      border-radius: 50%;
      background: #ff3b30;
      color: white;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: bold;
      font-size: 0.85rem;
      box-shadow: 0 0 10px rgba(255, 59, 48, 0.6);
      z-index: 2;
      cursor: help;
    }
    .vi-error-cluster {
      border: 3px solid #ff3b30 !important;
      box-shadow: 0 0 15px rgba(255, 59, 48, 0.2);
    }
    .vi-error-cluster .vi-node-label {
      color: #ff3b30 !important;
    }
    .vi-cluster-items {
      display: flex;
      flex-direction: column;
      gap: 0.5rem;
      font-size: 0.85rem;
      margin-top: 0.25rem;
    }
    .vi-cluster-item {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }
    .vi-led-label {
      width: 75px;
      font-weight: bold;
      font-size: 0.75rem;
      color: var(--ifm-color-emphasis-700);
    }
    .vi-led {
      width: 14px;
      height: 14px;
      border-radius: 50%;
      background: #ff3b30;
      box-shadow: 0 0 8px #ff3b30, inset 0 0 4px rgba(0,0,0,0.5);
      animation: led-pulse 1.5s infinite alternate;
    }
    @keyframes led-pulse {
      0% { opacity: 0.6; box-shadow: 0 0 4px #ff3b30; }
      100% { opacity: 1; box-shadow: 0 0 12px #ff3b30, 0 0 20px #ff3b30; }
    }
    .vi-led-text {
      font-size: 0.75rem;
      font-weight: bold;
      color: #ff3b30;
    }
    .vi-cluster-val {
      background: var(--ifm-color-emphasis-100);
      border: 1px solid var(--ifm-color-emphasis-300);
      padding: 3px 6px;
      border-radius: 3px;
      flex: 1;
      font-size: 0.8rem;
    }
    .vi-delay-node {
      display: flex;
      align-items: center;
      gap: 1rem;
      background: rgba(33, 150, 243, 0.08);
      border: 2px dashed #2196F3;
      border-radius: 6px;
      padding: 0.75rem 1rem;
      max-width: 400px;
    }
    .vi-delay-icon {
      width: 44px;
      height: 44px;
      background: linear-gradient(135deg, #2196F3 0%, #1976D2 100%);
      border: 2px solid #0D47A1;
      border-radius: 4px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      color: white;
      font-weight: bold;
      box-shadow: 0 2px 5px rgba(0,0,0,0.15);
      flex-shrink: 0;
    }
    .vi-delay-icon-clock {
      width: 18px;
      height: 18px;
      border: 2px solid white;
      border-radius: 50%;
      position: relative;
    }
    .vi-delay-icon-clock::after {
      content: '';
      position: absolute;
      width: 6px;
      height: 2px;
      background: white;
      top: 6px;
      left: 6px;
      transform-origin: left center;
      transform: rotate(-45deg);
    }
    .vi-delay-icon-clock::before {
      content: '';
      position: absolute;
      width: 2px;
      height: 6px;
      background: white;
      top: 2px;
      left: 6px;
    }
    .vi-delay-text {
      font-size: 0.85rem;
      color: var(--ifm-text-color);
      line-height: 1.4;
    }
    .vi-btn-ok {
      background: linear-gradient(180deg, #ffffff 0%, #e6e6e6 100%);
      border: 2px solid #777777;
      color: #222222 !important;
      padding: 0.65rem 2rem;
      font-size: 0.9rem;
      font-weight: bold;
      cursor: pointer;
      border-radius: 4px;
      box-shadow: inset 0 1px 0 white, 0 3px 6px rgba(0,0,0,0.1);
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
      transition: all 0.15s ease;
      text-decoration: none !important;
    }
    html[data-theme='dark'] .vi-btn-ok {
      background: linear-gradient(180deg, #3a3a3a 0%, #242424 100%);
      border: 2px solid #999999;
      color: #ffffff !important;
      box-shadow: inset 0 1px 0 rgba(255,255,255,0.05), 0 3px 6px rgba(0,0,0,0.3);
    }
    .vi-btn-ok:hover {
      border-color: #e08b00;
      box-shadow: 0 0 10px rgba(224, 139, 0, 0.4);
      background: #fdfdfd;
    }
    html[data-theme='dark'] .vi-btn-ok:hover {
      border-color: #ffb84d;
      box-shadow: 0 0 10px rgba(255, 184, 77, 0.3);
      background: #444444;
    }
    .vi-btn-ok:active {
      transform: translateY(1px);
      box-shadow: inset 0 2px 5px rgba(0,0,0,0.2);
    }
  `;

  return (
    <main className="container margin-vert--xl">
      <style dangerouslySetInnerHTML={{ __html: styles }} />
      <div className="vi-container">
        {/* LabVIEW Window Header */}
        <div className="vi-toolbar">
          <div className="vi-toolbar-buttons">
            {/* Broken Run Button */}
            <div className="vi-btn-icon" title="List Errors (VI is broken)" style={{ cursor: 'help' }}>
              <svg width="15" height="15" viewBox="0 0 24 24" style={{ display: 'block' }}>
                <path d="M 3,6 L 11,6 L 9,12 L 11,18 L 3,18 Z" fill="#FF3B30" stroke="#d32f2f" strokeWidth="1.5" />
                <path d="M 13,6 L 16,6 L 22,12 L 15,18 L 13,18 L 11,12 Z" fill="#FF3B30" stroke="#d32f2f" strokeWidth="1.5" />
              </svg>
            </div>
            {/* Run Continuously (Disabled/Greyed) */}
            <div className="vi-btn-icon" style={{ opacity: 0.4, cursor: 'not-allowed' }}>
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="var(--ifm-color-emphasis-800)" strokeWidth="2">
                <path d="M4 4v5h.582m15.356 2A8.001 8.001 0 1021 12h-1.5" strokeLinecap="round" strokeLinejoin="round" />
              </svg>
            </div>
            {/* Abort Execution */}
            <div className="vi-btn-icon" style={{ opacity: 0.8 }}>
              <svg width="14" height="14" viewBox="0 0 24 24" fill="#FF3B30">
                <circle cx="12" cy="12" r="10" />
                <rect x="8" y="8" width="8" height="8" fill="white" />
              </svg>
            </div>
            {/* Pause */}
            <div className="vi-btn-icon" style={{ opacity: 0.4, cursor: 'not-allowed' }}>
              <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="var(--ifm-color-emphasis-800)" strokeWidth="2">
                <path d="M10 4H6v16h4V4zm8 0h-4v16h4V4z" strokeLinecap="round" strokeLinejoin="round" />
              </svg>
            </div>
          </div>
          <div className="vi-header-title">
            <span style={{ color: 'var(--ifm-color-emphasis-600)' }}>[Block Diagram]</span>
            <span>{content.title}</span>
          </div>
        </div>

        {/* Front Panel / Block Diagram Content */}
        <div className="vi-panel">
          {/* Main Error Headers */}
          <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
            <h1 className="vi-heading">{content.heading}</h1>
            <p className="vi-desc">{content.desc}</p>
          </div>

          {/* Interactive Wire Diagram */}
          <div className="vi-diagram">
            {/* Source Node */}
            <div className="vi-node">
              <span className="vi-node-label">{content.urlLabel}</span>
              <div className="vi-node-content">
                {typeof window !== 'undefined' ? window.location.pathname : '/'}
              </div>
            </div>

            {/* Wire */}
            <div className="vi-wire-container">
              <div className="vi-wire"></div>
              <div className="vi-wire-x" title={content.tooltip}>X</div>
            </div>

            {/* Error Cluster Node */}
            <div className="vi-node vi-error-cluster">
              <span className="vi-node-label">{content.errorLabel}</span>
              <div className="vi-cluster-items">
                <div className="vi-cluster-item">
                  <span className="vi-led-label">{content.statusLabel}</span>
                  <div className="vi-led"></div>
                  <span className="vi-led-text">T</span>
                </div>
                <div className="vi-cluster-item">
                  <span className="vi-led-label">{content.codeLabel}</span>
                  <span className="vi-cluster-val" style={{ color: '#ff3b30', fontWeight: 'bold' }}>404</span>
                </div>
                <div className="vi-cluster-item">
                  <span className="vi-led-label">{content.sourceLabel}</span>
                  <span className="vi-cluster-val" style={{ whiteSpace: 'nowrap', overflow: 'hidden', textOverflow: 'ellipsis' }}>
                    {content.sourceVal}
                  </span>
                </div>
              </div>
            </div>
          </div>

          {/* Delay indicator and Ok button */}
          <div style={{ display: 'flex', flexDirection: 'row', alignItems: 'center', justifyContent: 'space-between', gap: '1.5rem', flexWrap: 'wrap', marginTop: '0.5rem' }}>
            {/* Time Delay SubVI representation */}
            <div className="vi-delay-node">
              <div className="vi-delay-icon">
                <div className="vi-delay-icon-clock"></div>
                <span style={{ fontSize: '0.55rem', marginTop: '2px', fontWeight: 'bold' }}>DELAY</span>
              </div>
              <div className="vi-delay-text">
                <strong>{content.delayLabel}:</strong> {seconds}s
                <div style={{ fontSize: '0.75rem', color: 'var(--ifm-color-emphasis-600)', marginTop: '1px' }}>
                  {content.secondsText}
                </div>
              </div>
            </div>

            {/* Return button */}
            <div>
              <Link className="vi-btn-ok" to={targetPath}>
                {/* SVG green play arrow (OK button icon) */}
                <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M8 5v14l11-7z" />
                </svg>
                {content.btnText}
              </Link>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}

