package com.byazt.lc;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;

@com.byazt.kj.hp(hp = {0, 1, 1769, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static void hp(String str, String str2) throws IOException {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        File file = new File(str);
        File file2 = new File(str2);
        if (file.exists() && file.isFile() && file.canRead()) {
            if (file2.getParentFile() != null && !file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            FileChannel channel = fileInputStream.getChannel();
            FileChannel channel2 = fileOutputStream.getChannel();
            channel2.write(channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()));
            channel.close();
            channel2.close();
            fileInputStream.close();
            fileOutputStream.close();
        }
    }

    public static void hp(InputStream inputStream, OutputStream outputStream) throws IOException {
        hp(inputStream, outputStream, 4096);
    }

    private static void hp(InputStream inputStream, OutputStream outputStream, int i2) throws IOException {
        if (inputStream == null || outputStream == null) {
            return;
        }
        ReadableByteChannel readableByteChannelNewChannel = Channels.newChannel(inputStream);
        WritableByteChannel writableByteChannelNewChannel = Channels.newChannel(outputStream);
        hp(readableByteChannelNewChannel, writableByteChannelNewChannel, i2);
        readableByteChannelNewChannel.close();
        writableByteChannelNewChannel.close();
    }

    public static String hp(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileChannel channel = fileInputStream.getChannel();
        String string = Charset.defaultCharset().newDecoder().decode(channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).asReadOnlyBuffer()).toString();
        channel.close();
        fileInputStream.close();
        return string;
    }

    public static boolean hp(String str, File file, StringBuilder sb) throws IOException {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            FileChannel channel = fileOutputStream.getChannel();
            channel.write(ByteBuffer.wrap(str.getBytes()));
            channel.close();
            fileOutputStream.close();
            return true;
        } catch (IOException e2) {
            sb.append(e2.getMessage());
            return false;
        }
    }

    private static void hp(ReadableByteChannel readableByteChannel, WritableByteChannel writableByteChannel, int i2) throws IOException {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i2);
        while (readableByteChannel.read(byteBufferAllocateDirect) != -1) {
            byteBufferAllocateDirect.flip();
            while (byteBufferAllocateDirect.hasRemaining()) {
                writableByteChannel.write(byteBufferAllocateDirect);
            }
            byteBufferAllocateDirect.clear();
        }
    }
}
