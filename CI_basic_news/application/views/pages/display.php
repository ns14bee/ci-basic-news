
<h2>Records</h2>


<table border="1px" width="80%" align="center" >
	<tr>
		<th>News Title</th>
		<th>Details </th>
	</tr>

	<?php foreach($records as $record): ?>
	<tr>
		<td><?php echo $record->title; ?></td>
		<td><?php echo $record->text; ?></td>
	</tr>
	<?php endforeach; ?>

</table>