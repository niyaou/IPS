var audio=["MP3","MPGA","WAV","OGG","MKA","MID","MIDI","AAC","WMA"]
var media=["MPEG","MPG","MP4","M4V","3GP","MKV","WMV","AVI"]
var image=["JPG","JPEG", "GIF","PNG","BMP","MPEG"]
var zip=["ZIP","TAR","7Z"]
var text=["TXT","HTML","PDF","DOC","XLS","PPT",]




function getMIMETYPE(str){
	for(var i in audio ){
		if (str.indexOf(audio[i])!=-1){
			return 'audio'
		}
	}
	for(var i in media ){
		if (str.indexOf(media[i])!=-1){
			return 'media'
		}
	}
	for(var i in image ){
		if (str.indexOf(image[i])!=-1){
			return 'image'
		}
	}
	for(var i in zip ){
		if (str.indexOf(zip[i])!=-1){
			return 'zip'
		}
	}
	for(var i in text ){
		if (str.indexOf(text[i])!=-1){
			return 'text'
		}
	}
}

function getAllSupportedFile(){
	var support=""

	for(j = 0; j < audio.length; j++) {
		support+= audio[j]+","
	} 
	for(j = 0; j < media.length; j++) {
		support+= media[j]+","  
	} 
	for(j = 0; j < image.length; j++) {
		support+= image[j]+","  
	} 
	for(j = 0; j < zip.length; j++) {
		support+= zip[j]+","  
	} 
	for(j = 0; j < text.length; j++) {
		support+= text[j]+","     
	} 
	support=support.substring(0,support.length-1)
	return support
}