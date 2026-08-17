.class public Lcom/fl/saas/adx/base/exception/FLError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:I

.field private errorType:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fl/saas/adx/base/exception/FLError;->code:I

    iput-object p3, p0, Lcom/fl/saas/adx/base/exception/FLError;->message:Ljava/lang/String;

    iput p2, p0, Lcom/fl/saas/adx/base/exception/FLError;->errorType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fl/saas/adx/base/exception/FLError;->code:I

    iput-object p2, p0, Lcom/fl/saas/adx/base/exception/FLError;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/exception/FLError;->message:Ljava/lang/String;

    return-void
.end method

.method public static create(IILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/adx/base/exception/FLError;

    invoke-direct {v0, p0, p1, p2}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;
    .locals 1

    .line 2
    new-instance v0, Lcom/fl/saas/adx/base/exception/FLError;

    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;
    .locals 1

    .line 3
    new-instance v0, Lcom/fl/saas/adx/base/exception/FLError;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/exception/FLError;->code:I

    return v0
.end method

.method public getErrorType()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/exception/FLError;->errorType:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/exception/FLError;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/exception/FLError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/exception/FLError;->code:I

    return-void
.end method

.method public setErrorType(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/exception/FLError;->errorType:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/exception/FLError;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fl/saas/adx/base/exception/FLError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fl/saas/adx/base/exception/FLError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", errorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fl/saas/adx/base/exception/FLError;->errorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
