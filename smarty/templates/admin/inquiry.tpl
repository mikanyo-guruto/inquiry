<!DOCTYPE html>
<html>
<head>
	<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
<div class="container">
<h1>問い合わせ一覧</h1>

{* $inquiry_list|var_dump *}

<h2>検索</h2>
<form action="./inquiry_list.php" method="GET">
<input type="hidden" name="sort" value="{$sort}">
name(曖昧)：<input type="text" name="name" value="{$find_string.name}"><br>
email：<input type="text" name="email" value="{$find_string.email}"><br>
誕生日：
<input type="text" name="birthday_from" value="{$find_string.birthday_from}">～
<input type="text" name="birthday_to"  value="{$find_string.birthday_to}"><br>
<button class="btn btn-normal">検索</button>
</form>
<br>

<h2>一覧</h2>
{if $back_page_flg}
<a href="./inquiry_list.php?sort={$sort}&{$uri_params|unescape}&p={$back_page}">back</a>
{else}

{/if}
{if $next_page_flg}
<a href="./inquiry_list.php?sort={$sort}&{$uri_params|unescape}&p={$next_page}">next</a>
{else}

{/if}

<table class="table table-hover">
<tr>
	<th>ID<a href="./inquiry_list.php?sort=id&{$uri_params|unescape}">▲</a><a href="./inquiry_list.php?sort=id_desc&{$uri_params|unescape}">▼</a></th>
	<th>名前<a href="#">▲</a><a href="#">▼</a></th>
	<th>E-mail<a href="#">▲</a><a href="#">▼</a></th>
	<th>問い合わせ内容</th>
	<th>返信日時<a href="./inquiry_list.php?sort=response_date&{$uri_params|unescape}">▲</a><a href="./inquiry_list.php?sort=response_date_desc&{$uri_params|unescape}">▼</a></th>
	<th></th>
</tr>
{foreach from=$inquiry_list item=i}
	<tr>
		<td>{$i.inquiry_id}</td>
		<td>{$i.name}</td>
		<td>{$i.email}</td>
		<td>{$i.inquiry_body}</td>
		<td>{$i.response_date}</td>
		<td><a href="./inquiry_detail.php?inquiry_id={$i.inquiry_id|urlencode}" class="btn btn-normal">詳細</a>
	</tr>
{/foreach}
</table>

<hr>
<a href="./top.php">Topに戻る</a>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</div>
</body>
</html>