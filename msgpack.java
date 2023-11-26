import java.io.*;
import org.msgpack.MessagePack;

public class MsgPack {
    public static void main(String[] args) {
		initialFile = new File("bad_words"); // or bad_isp
		List<String> al = new ArrayList<String>();
		try (OutputStream outputStream = new FileOutputStream(initialFile)) {
			al.add(0, "test");
			al.add(1, "test2");
			mp.write(outputStream, al);

		} catch (IOException e) {
			e.printStackTrace();
		}
    }
}