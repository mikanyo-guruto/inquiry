<!DOCTYPE html>
<html>
<head>
	<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
<div class="container">
	<table class="table">
		<tr>
			<td>id</td>
			<td>{$inquiry_data.inquiry_id}</td>
		</tr>
		<tr>
			<td>ステータス</td>
			<td>
			{if $inquiry_data.status == 0}{$inquiry_data.status}{/if}
			{if $inquiry_data.status == 1}{$inquiry_data.status}{/if}
			{if $inquiry_data.status == 2}{$inquiry_data.status}{/if}
			</td>
			<td></td>
		</tr>
		<tr>
			<td>email</td>
			<td>{$inquiry_data.email}</td>
		</tr>
		<tr>
			<td>name</td>
			<td>{$inquiry_data.name}</td>
		</tr>
		<tr>
			<td>birthday</td>
			<td>{$inquiry_data.birthday}</td>
		</tr>
		<tr>
			<td>body</td>
			<td>{$inquiry_data.inquiry_body}</td>
		</tr>
		<tr>
			<td>返信日時</td>
			<td>{$inquiry_data.response_date}</td>
		</tr>
		<tr>
			<td>返信内容</td>
			<td><pre>{$inquiry_data.response_body}</pre></td>
		</tr>
	</table>

	<h1>a</h1>
	<h2>返信内容の登録</h2>
	<form action="./inquiry_edit.php" method="post">
		<input type="hidden" name="inquiry_id" value="{$inquiry_data.inquiry_id}">
		<p>返信内容<textarea name="response_body"></textarea></p><br>
		<button class="btn btn-primary">返信内容を登録する</button>
	</form>

	<hr>
	<a href="#">ログアウト</a>
	<a href="./top.php">Topに戻る</a>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</div>
</body>
</html>