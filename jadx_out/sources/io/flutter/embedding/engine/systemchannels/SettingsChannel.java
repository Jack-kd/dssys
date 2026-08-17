package io.flutter.embedding.engine.systemchannels;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.JSONMessageCodec;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes5.dex */
public class SettingsChannel {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String ALWAYS_USE_24_HOUR_FORMAT = "alwaysUse24HourFormat";
    private static final String BRIEFLY_SHOW_PASSWORD = "brieflyShowPassword";
    public static final String CHANNEL_NAME = "flutter/settings";
    private static final String CONFIGURATION_ID = "configurationId";
    private static final String NATIVE_SPELL_CHECK_SERVICE_DEFINED = "nativeSpellCheckServiceDefined";
    private static final String PLATFORM_BRIGHTNESS = "platformBrightness";
    private static final String TAG = "SettingsChannel";
    private static final String TEXT_SCALE_FACTOR = "textScaleFactor";

    @NonNull
    public final BasicMessageChannel<Object> channel;

    @VisibleForTesting
    final ConfigurationQueue configurationQueue = new ConfigurationQueue();

    @VisibleForTesting
    public static class ConfigurationQueue {
        private SentConfiguration currentConfiguration;
        private SentConfiguration previousEnqueuedConfiguration;

        @VisibleForTesting
        final ConcurrentLinkedQueue<SentConfiguration> sentQueue = new ConcurrentLinkedQueue<>();

        public static class SentConfiguration {
            private static int nextConfigGeneration = Integer.MIN_VALUE;

            @NonNull
            private final DisplayMetrics displayMetrics;

            @NonNull
            public final int generationNumber;

            public SentConfiguration(@NonNull DisplayMetrics displayMetrics) {
                int i2 = nextConfigGeneration;
                nextConfigGeneration = i2 + 1;
                this.generationNumber = i2;
                this.displayMetrics = displayMetrics;
            }
        }

        @Nullable
        @UiThread
        public BasicMessageChannel.Reply enqueueConfiguration(SentConfiguration sentConfiguration) {
            this.sentQueue.add(sentConfiguration);
            final SentConfiguration sentConfiguration2 = this.previousEnqueuedConfiguration;
            this.previousEnqueuedConfiguration = sentConfiguration;
            if (sentConfiguration2 == null) {
                return null;
            }
            return new BasicMessageChannel.Reply() { // from class: io.flutter.embedding.engine.systemchannels.SettingsChannel.ConfigurationQueue.1
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                @UiThread
                public void reply(Object obj) {
                    ConfigurationQueue.this.sentQueue.remove(sentConfiguration2);
                    if (ConfigurationQueue.this.sentQueue.isEmpty()) {
                        return;
                    }
                    Log.e(SettingsChannel.TAG, "The queue becomes empty after removing config generation " + sentConfiguration2.generationNumber);
                }
            };
        }

        public SentConfiguration getConfiguration(int i2) {
            SentConfiguration sentConfiguration;
            if (this.currentConfiguration == null) {
                this.currentConfiguration = this.sentQueue.poll();
            }
            while (true) {
                sentConfiguration = this.currentConfiguration;
                if (sentConfiguration == null || sentConfiguration.generationNumber >= i2) {
                    break;
                }
                this.currentConfiguration = this.sentQueue.poll();
            }
            if (sentConfiguration == null) {
                Log.e(SettingsChannel.TAG, "Cannot find config with generation: " + i2 + ", after exhausting the queue.");
                return null;
            }
            if (sentConfiguration.generationNumber == i2) {
                return sentConfiguration;
            }
            Log.e(SettingsChannel.TAG, "Cannot find config with generation: " + i2 + ", the oldest config is now: " + this.currentConfiguration.generationNumber);
            return null;
        }
    }

    public class MessageBuilder {

        @Nullable
        private DisplayMetrics displayMetrics;

        @NonNull
        private Map<String, Object> message = new HashMap();

        public MessageBuilder() {
        }

        public void send() {
            Log.v(SettingsChannel.TAG, "Sending message: \ntextScaleFactor: " + this.message.get(SettingsChannel.TEXT_SCALE_FACTOR) + "\nalwaysUse24HourFormat: " + this.message.get(SettingsChannel.ALWAYS_USE_24_HOUR_FORMAT) + "\nplatformBrightness: " + this.message.get(SettingsChannel.PLATFORM_BRIGHTNESS));
            DisplayMetrics displayMetrics = this.displayMetrics;
            if (!SettingsChannel.hasNonlinearTextScalingSupport() || displayMetrics == null) {
                SettingsChannel.this.channel.send(this.message);
                return;
            }
            ConfigurationQueue.SentConfiguration sentConfiguration = new ConfigurationQueue.SentConfiguration(displayMetrics);
            BasicMessageChannel.Reply<Object> replyEnqueueConfiguration = SettingsChannel.this.configurationQueue.enqueueConfiguration(sentConfiguration);
            this.message.put(SettingsChannel.CONFIGURATION_ID, Integer.valueOf(sentConfiguration.generationNumber));
            SettingsChannel.this.channel.send(this.message, replyEnqueueConfiguration);
        }

        @NonNull
        public MessageBuilder setBrieflyShowPassword(@NonNull boolean z2) {
            this.message.put(SettingsChannel.BRIEFLY_SHOW_PASSWORD, Boolean.valueOf(z2));
            return this;
        }

        @NonNull
        public MessageBuilder setDisplayMetrics(@NonNull DisplayMetrics displayMetrics) {
            this.displayMetrics = displayMetrics;
            return this;
        }

        @NonNull
        public MessageBuilder setNativeSpellCheckServiceDefined(boolean z2) {
            this.message.put(SettingsChannel.NATIVE_SPELL_CHECK_SERVICE_DEFINED, Boolean.valueOf(z2));
            return this;
        }

        @NonNull
        public MessageBuilder setPlatformBrightness(@NonNull PlatformBrightness platformBrightness) {
            this.message.put(SettingsChannel.PLATFORM_BRIGHTNESS, platformBrightness.name);
            return this;
        }

        @NonNull
        public MessageBuilder setTextScaleFactor(float f2) {
            this.message.put(SettingsChannel.TEXT_SCALE_FACTOR, Float.valueOf(f2));
            return this;
        }

        @NonNull
        public MessageBuilder setUse24HourFormat(boolean z2) {
            this.message.put(SettingsChannel.ALWAYS_USE_24_HOUR_FORMAT, Boolean.valueOf(z2));
            return this;
        }
    }

    public enum PlatformBrightness {
        light("light"),
        dark("dark");


        @NonNull
        public String name;

        PlatformBrightness(@NonNull String str) {
            this.name = str;
        }
    }

    public SettingsChannel(@NonNull DartExecutor dartExecutor) {
        this.channel = new BasicMessageChannel<>(dartExecutor, CHANNEL_NAME, JSONMessageCodec.INSTANCE);
    }

    @SuppressLint({"AnnotateVersionCheck"})
    public static boolean hasNonlinearTextScalingSupport() {
        return Build.VERSION.SDK_INT >= 34;
    }

    public DisplayMetrics getPastDisplayMetrics(int i2) {
        ConfigurationQueue.SentConfiguration configuration = this.configurationQueue.getConfiguration(i2);
        if (configuration == null) {
            return null;
        }
        return configuration.displayMetrics;
    }

    @NonNull
    public MessageBuilder startMessage() {
        return new MessageBuilder();
    }
}
