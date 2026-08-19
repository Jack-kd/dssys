.class public final synthetic Lcom/fl/saas/adx/base/manager/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/manager/loader/BaseLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/manager/loader/BaseLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/g;->a:Lcom/fl/saas/adx/base/manager/loader/BaseLoader;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/g;->a:Lcom/fl/saas/adx/base/manager/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->destroy()V

    return-void
.end method
