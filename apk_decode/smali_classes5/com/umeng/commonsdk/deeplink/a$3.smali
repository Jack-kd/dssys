.class Lcom/umeng/commonsdk/deeplink/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/deeplink/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

.field final synthetic b:I

.field final synthetic c:Lcom/umeng/commonsdk/deeplink/a;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/deeplink/a;Lcom/umeng/commonsdk/deeplink/OnAttributionListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/a$3;->c:Lcom/umeng/commonsdk/deeplink/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/commonsdk/deeplink/a$3;->a:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

    .line 4
    .line 5
    iput p3, p0, Lcom/umeng/commonsdk/deeplink/a$3;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/a$3;->a:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

    .line 2
    .line 3
    iget v1, p0, Lcom/umeng/commonsdk/deeplink/a$3;->b:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/umeng/commonsdk/deeplink/OnAttributionListener;->onAttributionFail(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    return-void
.end method
