<form method="post" action="" >
	<table border="1px" align="center" height="50%" width="80%">
		<tr>
				<th colspan="2" >Update Data</th>

		</tr>
		<tr>
				<td> Title </td>
				<input type ="hidden" name="id" value="<?php echo $record['id']; ?>"/>
				<td> <input type="text" name="title" value="<?php echo $record['title']; ?>" /></td>

		</tr>
		<tr>
				<td> Text </td>
				<td> <textarea rows="4" cols="50" name="detail"><?php echo $record['text']; ?></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type ="submit" name="submit" />
			</td>
		</tr>
	</table>
</form>