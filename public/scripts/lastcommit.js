fetch('https://api.github.com/repos/adammatthiesen/mxyz-support/commits?per_page=1')
  .then(res => res.json())
  .then(res => {
    var jsonDate = res[0].commit.author.date
    document.getElementById('commit').innerHTML = (new Date(jsonDate).toLocaleDateString('en-US', options));
  })

  const options = {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  };