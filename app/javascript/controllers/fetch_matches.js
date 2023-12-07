document.addEventListener('DOMContentLoaded', (event) => {
  const output = document.getElementById('output');
  const url = 'https://api.api-futebol.com.br/v1/partidas/ao-vivo';
  const headers = {
      'Authorization': 'WXSWC996ZX43'
  };

  fetch(url, { method: 'GET', headers: headers })
      .then(response => response.json())
      .then(data => {
          let html = '<h2>Live Matches</h2>';
          for (let key in data) {
              data[key].forEach(match => {
                  html += `
                      <div>
                          <h3>${match.placar}</h3>
                          <p>${match.time_mandante.nome_popular} vs ${match.time_visitante.nome_popular}</p>
                          <p>Status: ${match.status}</p>
                          <p>Date: ${match.data_realizacao}</p>
                          <p>Time: ${match.hora_realizacao}</p>
                      </div>
                  `;
              });
          }
          output.innerHTML = html;
      })
      .catch(error => console.error(error));
});
