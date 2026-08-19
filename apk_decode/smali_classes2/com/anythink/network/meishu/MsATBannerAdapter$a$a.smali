.class Lcom/anythink/network/meishu/MsATBannerAdapter$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATBannerAdapter$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATBannerAdapter$a;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATBannerAdapter$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter$a$a;->a:Lcom/anythink/network/meishu/MsATBannerAdapter$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter$a$a;->a:Lcom/anythink/network/meishu/MsATBannerAdapter$a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->d:Lcom/anythink/network/meishu/MsATBannerAdapter;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->b:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->c:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v0}, Lcom/anythink/network/meishu/MsATBannerAdapter;->a(Lcom/anythink/network/meishu/MsATBannerAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
