<html>
	<head>
		<title>{$naslov}</title>
	</head>
	<body>
		<h2>{$naslov}</h2>
		<table>
		{section name = i loop=$korisnici}
			<tr>
				<td>{$korisnici[i].Ime}</td>
				<td>{$korisnici[i].Prezime}</td>
				
			</tr>
		{/section}
		</table>
	</body>
</html>