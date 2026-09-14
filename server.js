const express = require('express');
const QRCode = require('qrcode');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.static(path.join(__dirname, 'public')));
app.use(express.json());

// Route API : générer un QR code en PNG (buffer)
app.get('/api/qr', async (req, res) => {
  const { text, size = 4, color = '#000000', bgColor = '#ffffff', ecLevel = 'M' } = req.query;

  if (!text || text.trim() === '') {
    return res.status(400).json({ error: 'Le texte ou l URL est requis.' });
  }

  try {
    const buf = await QRCode.toBuffer(text.trim(), {
      type: 'png',
      width: Math.min(Math.max(parseInt(size, 10) || 4, 1) * 10 + 200, 2048),
      color: {
        dark: color || '#000000',
        light: bgColor || '#ffffff',
      },
      errorCorrectionLevel: ecLevel || 'M',
    });
    res.set('Content-Type', 'image/png');
    res.set('Content-Disposition', `attachment; filename="qrcode.png"`);
    res.send(buf);
  } catch (err) {
    console.error('Erreur génération QR :', err);
    res.status(500).json({ error: 'Impossible de générer le code QR.' });
  }
});

app.listen(PORT, () => {
  console.log(`Serveur QR Code → http://localhost:${PORT}`);
});
