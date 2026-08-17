.class public Lcom/kwad/framework/filedownloader/exception/PathConflictException;
.super Ljava/lang/IllegalAccessException;
.source "SourceFile"


# instance fields
.field private final mAnotherSamePathTaskId:I

.field private final mDownloadingConflictPath:Ljava/lang/String;

.field private final mTargetFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0, p2, p3}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "There is an another running task(%d) with the same downloading path(%s), because of they are with the same target-file-path(%s), so if the current task is started, the path of the file is sure to be written by multiple tasks, it is wrong, then you receive this exception to avoid such conflict."

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/kwad/framework/filedownloader/exception/PathConflictException;->mAnotherSamePathTaskId:I

    .line 19
    .line 20
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/exception/PathConflictException;->mDownloadingConflictPath:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/kwad/framework/filedownloader/exception/PathConflictException;->mTargetFilePath:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getAnotherSamePathTaskId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/exception/PathConflictException;->mAnotherSamePathTaskId:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownloadingConflictPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/exception/PathConflictException;->mDownloadingConflictPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/exception/PathConflictException;->mTargetFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
