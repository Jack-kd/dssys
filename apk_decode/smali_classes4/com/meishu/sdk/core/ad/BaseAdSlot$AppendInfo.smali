.class public Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/ad/BaseAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppendInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final clickExtInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

.field private final hasClicked:Lcom/meishu/sdk/core/utils/b;

.field private volatile hasClickedSkip:Z

.field private volatile hasExposed:Z

.field private volatile hasTimeOver:Z

.field private volatile hasVideoStart:Z

.field private final resLoadSuccess:Lcom/meishu/sdk/core/utils/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/meishu/sdk/core/utils/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasClicked:Lcom/meishu/sdk/core/utils/b;

    .line 10
    .line 11
    new-instance v0, Lcom/meishu/sdk/core/utils/b;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->resLoadSuccess:Lcom/meishu/sdk/core/utils/b;

    .line 17
    .line 18
    new-instance v0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->clickExtInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getClickExtInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->clickExtInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHasClicked()Lcom/meishu/sdk/core/utils/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasClicked:Lcom/meishu/sdk/core/utils/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResLoadSuccess()Lcom/meishu/sdk/core/utils/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->resLoadSuccess:Lcom/meishu/sdk/core/utils/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHasClickedSkip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasClickedSkip:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHasExposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasExposed:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHasTimeOver()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasTimeOver:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHasVideoStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasVideoStart:Z

    .line 2
    .line 3
    return v0
.end method

.method public setHasClicked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasClicked:Lcom/meishu/sdk/core/utils/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/utils/b;->a(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHasClickedSkip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasClickedSkip:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHasExposed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasExposed:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHasTimeOver(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasTimeOver:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHasVideoStart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->hasVideoStart:Z

    .line 2
    .line 3
    return-void
.end method
