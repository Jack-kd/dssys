.class public Lcom/meishu/sdk/core/ad/TouchData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private touchPosition:Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;


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
.method public getTouchPosition()Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/TouchData;->touchPosition:Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;

    .line 2
    .line 3
    return-object v0
.end method

.method public setTouchPosition(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/TouchData;->touchPosition:Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;

    .line 2
    .line 3
    return-void
.end method
