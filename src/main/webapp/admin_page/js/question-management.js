class MyUploadAdapter {
	constructor(loader) {
		// The file loader instance to use during the upload.
		this.loader = loader;
	}

	// Starts the upload process.
	upload() {
		return this.loader.file
			.then(file => new Promise((resolve, reject) => {
				this._initRequest();
				this._initListeners(resolve, reject, file);
				this._sendRequest(file);
			}));
	}

	// Aborts the upload process.
	abort() {
		if (this.xhr) {
			this.xhr.abort();
		}
	}

	// Initializes the XMLHttpRequest object using the URL passed to the constructor.
	_initRequest() {
		const xhr = this.xhr = new XMLHttpRequest();

		// Note that your request may look different. It is up to you and your editor
		// integration to choose the right communication channel. This example uses
		// a POST request with JSON as a data structure but your configuration
		// could be different.
		xhr.open('POST', './questionImageUpload', true);
		xhr.responseType = 'text';
	}

	// Initializes XMLHttpRequest listeners.
	_initListeners(resolve, reject, file) {
		const xhr = this.xhr;
		const loader = this.loader;
		const genericErrorText = `Couldn't upload file: ${file.name}.`;

		xhr.addEventListener('error', () => reject(genericErrorText));
		xhr.addEventListener('abort', () => reject());
		xhr.addEventListener('load', () => {
			const response = xhr.response;

			// This example assumes the XHR server's "response" object will come with
			// an "error" which has its own "message" that can be passed to reject()
			// in the upload promise.
			//
			// Your integration may handle upload errors in a different way so make sure
			// it is done properly. The reject() function must be called when the upload fails.
			if (!response || response.error) {
				return reject(response && response.error ? response.error.message : genericErrorText);
			}

			// If the upload is successful, resolve the upload promise with an object containing
			// at least the "default" URL, pointing to the image on the server.
			// This URL will be used to display the image in the content. Learn more in the
			// UploadAdapter#upload documentation.
			resolve({
				default: response
			});
		});

		// Upload progress when it is supported. The file loader has the #uploadTotal and #uploaded
		// properties which are used e.g. to display the upload progress bar in the editor
		// user interface.
		if (xhr.upload) {
			xhr.upload.addEventListener('progress', evt => {
				if (evt.lengthComputable) {
					loader.uploadTotal = evt.total;
					loader.uploaded = evt.loaded;
				}
			});
		}
	}

	// Prepares the data and sends the request.
	_sendRequest(file) {
		// Prepare the form data.
		const data = new FormData();

		data.append('upload', file);

		// Important note: This is the right place to implement security mechanisms
		// like authentication and CSRF protection. For instance, you can use
		// XMLHttpRequest.setRequestHeader() to set the request headers containing
		// the CSRF token generated earlier by your application.

		// Send the request.
		this.xhr.send(data);
	}
}

// ...

function MyCustomUploadAdapterPlugin(editor) {
	editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
		// Configure the URL to the upload script in your back-end here!
		return new MyUploadAdapter(loader);
	};
}

// ...
/*function validation() {
	var text = myEditor.getData();
	console.log(text);
	if (text.length === 0) {
		alert("Xin ??i???n n???i dung b??i b??o");
		return false;
	} else {
		return true;
	}

}*/
var contentEditors = [];
var contentEditorsIndex = 0;
var explainEditors = [];
var explainEditorsIndex = 0;
$(document).ready(function() {
	$('.content-editor').each(function() {
		id = $(this).attr('id');
		ClassicEditor
			.create(document.querySelector('#' + id), {
				extraPlugins: [MyCustomUploadAdapterPlugin],
				// ...
			})
			.then(editor => {
				contentEditors.push(editor);
			})
			.catch(error => {
				console.log(error);
			});
		contentEditorsIndex++;
	})
	$('.explain-editor').each(function() {
		id = $(this).attr('id');
		ClassicEditor
			.create(document.querySelector('#' + id), {
				extraPlugins: [MyCustomUploadAdapterPlugin],
				// ...
			})
			.then(editor => {
				explainEditors.push(editor);
			})
			.catch(error => {
				console.log(error);
			});
		explainEditorsIndex++;
	})
})

//Ph????ng th???c c???p nh???t c??u h???i
function updateQuestion(button) {
	console.log(explainEditors[0].getData());
	var questionContainerDiv = $(button).closest('.question-container');
	var answerDivArray = questionContainerDiv.find('.answer');
	var name = $(answerDivArray[0]).find("input[type='radio']").attr("name");
	var inputAnswerArray = $('input[name=' + name + ']');
	var questionID = questionContainerDiv.find(".questionID").val();
	var questionNumber = parseInt(questionContainerDiv.find(".questionID").attr("name"));
	console.log(questionNumber - 1);
	var answers = "";
	// T???ng h???p ????p ??n
	for (i = 0; i < answerDivArray.length; i++) {
		var inputText = $(answerDivArray[i]).find("input[type='text']");
		var answerContent = inputText.val().replace(";", "");
		if (!answerContent.trim()) {
			alert("C??c ????p ??n kh??ng ???????c b??? tr???ng ho???c c?? d???u ch???m ph???y (;)");
			return;
		}
		answers += ";" + answerContent;
		var radioButton = $(answerDivArray[i]).find("input[type='radio']");
		if ($(radioButton).is(':checked')) {
			answers = i + 1 + answers;
		}
	}


	var explain = explainEditors[questionNumber - 1].getData();
	var content = contentEditors[questionNumber - 1].getData();
	console.log(explain);
	console.log(content);
	console.log(questionID);
	console.log(answers);
	if (!content.trim() || !explain.trim()) {
		alert("N???i dung v?? gi???i th??ch kh??ng ???????c b??? tr???ng");
		return;
	} else {



		$.ajax({
			url: '../admin/updateQuestion',
			type: 'POST',
			data: {
				explain: explain,
				content: content,
				questionID: questionID,
				answers: answers,
			},

			success: (function(result) {
				if (result === "true") {
					alert("C???p nh???t th??nh c??ng");
				} else {
					alert("C?? l???i x???y ra khi c???p nh???t c??u h???i");

				}
			})
		})
	}

}
// Ph????ng th???c th??m ????p ??n
function addAnswer(button) {
	var answerContainerDiv = $(button).closest('.answer-container');
	var answerDivArray = answerContainerDiv.find('.answer');
	var name = $(answerDivArray[0]).find("input[type='radio']").attr("name");
	var newsAnswerDiv = '<div class="answer list-group-item text-center">' +
		'<div class="row">' +
		'<div class="col-8">' +
		'<input type="text"/></div>' +
		'<div class="col-2"><input type="radio" name="' + name + '"></div>' +
		'<div class="col-2"><button onclick="deleteAnswer(this)"><i class="fa-solid fa-ban"></i></button></div>'
		+ '</div ></div >';
	$(answerDivArray[answerDivArray.length - 1]).after(newsAnswerDiv);
}
// ph????ng th???c x??a ????p ??n
function deleteAnswer(button) {
	var answerDiv = $(button).closest('.answer');
	var radioButton = answerDiv.find("input[type='radio']");
	var radionButtonName = radioButton.attr("name");
	var radioButtonArray = $('input[name=' + radionButtonName + ']');

	if (radioButtonArray.length <= 2) {
		alert("M???t c??u h???i c???n c?? t???i thi???u 2 ????p ??n");
	} else {
		// Ki???m tra xem c??u tr??? l???i b??? x??a c?? ??ang ???????c ch???n l?? c??u tr??? l???i ????ng hay kh??ng
		if ($(radioButton).is(':checked')) {
			answerDiv.remove();
			radioButtonArray = $('input[name=' + radionButtonName + ']');
			$(radioButtonArray[0]).prop("checked", true)
		} else {
			answerDiv.remove();
		}

	}
}
