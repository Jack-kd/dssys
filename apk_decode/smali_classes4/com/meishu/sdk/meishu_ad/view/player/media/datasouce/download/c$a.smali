.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;-><init>(Ljava/lang/String;Ljava/io/RandomAccessFile;JLjava/lang/Object;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/g;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->close()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
