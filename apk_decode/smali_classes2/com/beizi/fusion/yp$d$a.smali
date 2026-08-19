.class Lcom/beizi/fusion/yp$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/yp$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/beizi/fusion/yp$d;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/yp$d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/yp$d$a;->b:Lcom/beizi/fusion/yp$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/yp$d$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/yp$d$a;->b:Lcom/beizi/fusion/yp$d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/yp$d;->d:Lcom/beizi/fusion/yp$e;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/yp$d$a;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/beizi/fusion/yp$e;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
