/* GET home page. */
router.get('/:pagina?', function(req, res) {
  const pagina = parseInt(req.params.pagina || "1");
  global.db.findAll(pagina, (e, docs) => {
      if(e) { return console.log(e); }
 
      global.db.countAll((e, count) => {
        if(e) { return console.log(e); }
 
        const qtdPaginas = Math.ceil(count / global.db.TAMANHO_PAGINA);
        res.render('index', { title: 'Lista de Clientes', docs, count, qtdPaginas, pagina });
      })
  })
})

<hr />
    <p><%= count %> clientes encontrados!</p>
    <p>
    <%
      for(var i=1; i <= qtdPaginas; i++) {%>
        <a href="/<%= i %>"><%= i %></a> | 
    <%}%>
    </p>
    <hr />
    <a href="/new">Cadastrar novo cliente</a>
  </body>
</html>
