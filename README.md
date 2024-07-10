# Simples Contador

![img](/images/counter.png)

## Entendendo widgets, elementos e objectos

<p>

- <b>StatelessWidget</b> - esse tipo de widget não requer mudança de estado e é melhor utilizado em partes que não sofre mudança. </br>
- <b>StatefulWidget</b> - esse tipo de widget tem uma mudança de estado, ele é utilizado quando se necessita controlar o ciclo de vida do widget ou conteudos dinâmicos. </br>
- <b>void initState()</b> - esse método é chamado quando o widget é criado ele é como um construtor do widget. </br>
- <b>void didChangeDependecies()</b> - esse é chamado depois do initState()  ele é usado para executar a inicialização baseado no InheritedWidget depois dele. </br>
- <b>void didUpdateWidget(covariant T oldWidget)</b> - esse é chamado quando as configurações do widget mudam. </br>
- <b>void dispose()</b> - esse é chamado quando o widget é removido da árvore, como se fosse um destrutor de um widget. </br>
</p>

## Organização dos arquivos

<p>

<pre>
<b>lib/</b> </br>
    - <b>screens/</b></br>
        - <b>counter_app_body.dart</b> </br>
    - <b>widgets/</b></br>
        - <b>app_title.dart</b></br>
        - <b>history.dart</b></br>
    - <b>main.dart</b> </br>
</pre>
</p>


