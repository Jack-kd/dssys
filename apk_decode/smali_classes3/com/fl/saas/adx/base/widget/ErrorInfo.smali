.class public Lcom/fl/saas/adx/base/widget/ErrorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adv_id:Ljava/lang/String;

.field public code:I

.field public errorType:I

.field public msg:Ljava/lang/String;

.field public tagid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ErrorInfo;->adv_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ErrorInfo;->tagid:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/fl/saas/adx/base/widget/ErrorInfo;->code:I

    iput v1, p0, Lcom/fl/saas/adx/base/widget/ErrorInfo;->errorType:I

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/ErrorInfo;->msg:Ljava/lang/String;

    return-void
.end method
