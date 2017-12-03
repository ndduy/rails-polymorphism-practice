# README

The current implementation of the Attachment, Image Attachment, Document
Attachment polymorph as well as their Attachable Models and Documentable Models
is following the diagram below:
https://drive.google.com/a/xfers.com/file/d/1YueXVmPNM6-gHYnjPvgoI2ok6khTuEZE/view?usp=sharing

The actual attachment of the file to the Attachment model is done via Paperclip
Gem

gem "paperclip", "~> 5.0.0"

Further documentation on the usage can be find here:
https://github.com/thoughtbot/paperclip

=====

This repository also serve as the POC for testing out Paperclip folder structure
upon uploading to S3.

The implementation of the User Attachment mimics the current implementation of
Attachment of the Production Environment whereas the Image Attachment will
represent the refactor of the same logic.

To test out User Attachment Upload: Get into Rails Console

```
u = User.new
u.attachment = File.open('/Users/zuri/Downloads/Attachments.png')
u.save!
```

Folder structure of the saved file in this case is:

```
[paperclip] saving /users/attachments/000/000/003/original/Attachments.png
[paperclip] saving /users/attachments/000/000/003/small/Attachments.png
[paperclip] saving /users/attachments/000/000/003/large/Attachments.png
```

To test out Image Attachment Upload: Get into Rails Console

```
u = User.new
u.id = 1
u.build_user_verification_document
u.user_verification_document.id = 10
u.user_verification_document.build_nric_front
u.user_verification_document.nric_front.id = 99
u.user_verification_document.nric_front.attachment = File.open('/Users/zuri/Downloads/Attachments.png')
u.save!
```

Folder structure of the saved file in this case is:

```
[paperclip] saving /image_attachments/attachments/000/000/099/original/Attachments.png
[paperclip] saving /image_attachments/attachments/000/000/099/small/Attachments.png
[paperclip] saving /image_attachments/attachments/000/000/099/large/Attachments.png
```
