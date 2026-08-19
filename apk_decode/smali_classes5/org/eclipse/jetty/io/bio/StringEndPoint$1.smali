.class Lorg/eclipse/jetty/io/bio/StringEndPoint$1;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/bio/c;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/bio/c;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint$1;->val$e:Ljava/lang/Exception;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    .line 8
    .line 9
    return-void
.end method
