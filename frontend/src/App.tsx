import { useEffect, useState } from 'react'

function App() {
  const [backendStatus, setBackendStatus] = useState<'checking' | 'connected' | 'error'>('checking')

  useEffect(() => {
    fetch('/api/health')
      .then(() => setBackendStatus('connected'))
      .catch(() => setBackendStatus('error'))
  }, [])

  return (
    <div style={{ padding: '2rem', fontFamily: 'system-ui' }}>
      <h1>Production App</h1>
      <p>
        Frontend: <span style={{ color: 'green' }}>● Running</span> (localhost:5173)
      </p>
      <p>
        Backend:{' '}
        {backendStatus === 'checking' && <span style={{ color: 'gray' }}>○ Checking...</span>}
        {backendStatus === 'connected' && <span style={{ color: 'green' }}>● Connected</span>}
        {backendStatus === 'error' && <span style={{ color: 'red' }}>● Not connected</span>}{' '}
        (localhost:3000)
      </p>
    </div>
  )
}

export default App
