const win = window.open('https://example.com');
win.postMessage({ type: 'GREETING', text: 'Hello!' }, 'https://example.com');
