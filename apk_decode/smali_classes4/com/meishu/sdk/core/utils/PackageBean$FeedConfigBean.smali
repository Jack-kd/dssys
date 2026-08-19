.class public Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/PackageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedConfigBean"
.end annotation


# instance fields
.field private norlsc:I

.field private useOldStyle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getNorlsc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;->norlsc:I

    .line 2
    .line 3
    return v0
.end method

.method public getUseOldStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;->useOldStyle:I

    .line 2
    .line 3
    return v0
.end method
