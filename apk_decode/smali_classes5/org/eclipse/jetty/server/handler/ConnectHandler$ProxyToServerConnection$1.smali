.class Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lorg/eclipse/jetty/server/handler/c;

.field final synthetic val$x:Ljava/lang/InterruptedException;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/c;Ljava/lang/InterruptedException;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;->val$x:Ljava/lang/InterruptedException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    .line 8
    .line 9
    return-void
.end method
