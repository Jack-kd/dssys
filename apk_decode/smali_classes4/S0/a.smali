.class public final synthetic LS0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/j;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS0/a;->b:Lcom/meishu/sdk/meishu_ad/splash/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, LS0/a;->b:Lcom/meishu/sdk/meishu_ad/splash/j;

    invoke-static {v0}, Lcom/meishu/sdk/meishu_ad/splash/j;->a(Lcom/meishu/sdk/meishu_ad/splash/j;)V

    return-void
.end method
