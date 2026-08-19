.class public Lcom/meishu/sdk/core/utils/AdErrorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static LOAD_ERROR:I = 0x1

.field public static RENDER_ERROR:I = 0x2


# instance fields
.field private code:I

.field private errorType:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/meishu/sdk/core/utils/AdErrorInfo;->errorType:I

    .line 5
    .line 6
    iput p2, p0, Lcom/meishu/sdk/core/utils/AdErrorInfo;->code:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/AdErrorInfo;->message:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/AdErrorInfo;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/AdErrorInfo;->errorType:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/AdErrorInfo;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/AdErrorInfo;->code:I

    .line 2
    .line 3
    return-void
.end method

.method public setErrorType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/AdErrorInfo;->errorType:I

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/AdErrorInfo;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
