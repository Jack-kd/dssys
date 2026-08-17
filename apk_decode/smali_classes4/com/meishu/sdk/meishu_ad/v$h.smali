.class public Lcom/meishu/sdk/meishu_ad/v$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZZZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/f;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/nativ/a;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZLcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$h;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/v$h;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/v$h;->b:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/meishu/sdk/meishu_ad/v$h;->c:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/v$h;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/v$h;->e:Ljava/util/List;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$h;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$h;->b:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 4
    .line 5
    const-string v2, "\u89c6\u9891\u8d44\u6e90\u9519\u8bef"

    .line 6
    .line 7
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public success()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$h;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$h;->b:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/meishu/sdk/meishu_ad/v$h;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v$h;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$h;->e:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZLcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
