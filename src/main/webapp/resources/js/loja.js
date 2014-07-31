function confirmaExclusao(form) {
	if (confirm('Confirma a exclusão?')) {
		$("#" + form).submit();
	}
};